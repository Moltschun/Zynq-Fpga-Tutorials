`timescale 1ns / 1ps
module color_bar (
    input wire clk, 
    input wire rst_n,     
    output reg hsync,   
    output reg vsync,    
    output reg de,       
    output reg [7:0] rgb_r,   
    output reg [7:0] rgb_g,   
    output reg [7:0] rgb_b  
);


    //`define RES_1080P  
    `define RES_800x600  

    `ifdef RES_800x600
        parameter H_ACTIVE = 800;
        parameter H_FRONT = 40;
        parameter H_SYNC = 128;
        parameter H_BACK = 88;
        parameter V_ACTIVE = 600;
        parameter V_FRONT = 1;
        parameter V_SYNC = 4;
        parameter V_BACK = 23;
    `endif

    `ifdef RES_1080P
        parameter H_ACTIVE = 1920;
        parameter H_FRONT = 88;
        parameter H_SYNC = 44;
        parameter H_BACK = 148;
        parameter V_ACTIVE = 1080;
        parameter V_FRONT = 4;
        parameter V_SYNC = 5;
        parameter V_BACK = 36;
    `endif


    reg [11:0] h_count = 0;
    reg [11:0] v_count = 0;
    reg pix_data_req;

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)begin
            h_count<=12'd0;
            v_count<=12'd0;
            pix_data_req<=1'b0;
            de<=1'b0;
        end
        else begin 
            if (h_count < H_ACTIVE + H_FRONT + H_SYNC + H_BACK - 1'b1)
                h_count <= h_count + 1;
            else begin
                h_count <= 0;
                if (v_count < V_ACTIVE + V_FRONT + V_SYNC + V_BACK - 1'b1)
                    v_count <= v_count + 1;
                else
                    v_count <= 0;
            end
    
            hsync <= (h_count < H_SYNC) ? 0 : 1;
            vsync <= (v_count < V_SYNC) ? 0 : 1;
            
            de <= ((h_count >= H_SYNC + H_BACK ) && (h_count < H_SYNC + H_BACK + H_ACTIVE) 
                  &&(v_count >= V_SYNC + V_BACK ) && (v_count < V_SYNC + V_BACK + V_ACTIVE)) ? 1'b1:1'b0;
            
            pix_data_req <= ((h_count >= H_SYNC + H_BACK -1'b1 ) && (h_count < H_SYNC + H_BACK + H_ACTIVE -1'b1) 
                         &&(v_count >= V_SYNC + V_BACK ) && (v_count < V_SYNC + V_BACK + V_ACTIVE)) ? 1'b1:1'b0;
         end
    end


wire [11:0] pix_xpos = pix_data_req ? (h_count - (H_SYNC + H_BACK) ):12'd0;

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)begin
            rgb_r<=8'h00; rgb_g<=8'h00;  rgb_b<=8'h00; 
        end
        else if(pix_data_req)begin
            if(pix_xpos==12'd0)
                begin rgb_r<=8'hff; rgb_g<=8'hff;  rgb_b<=8'hff;  end  //White
            else if(pix_xpos ==( H_ACTIVE / 8 ) * 1)
                begin rgb_r<=8'hff; rgb_g<=8'hff;  rgb_b<=8'h00;  end  //Yellow
            else if(pix_xpos ==( H_ACTIVE / 8 ) * 2)
                begin rgb_r<=8'h00; rgb_g<=8'hff;  rgb_b<=8'hff;  end  //Cyan
            else if(pix_xpos ==( H_ACTIVE / 8 ) * 3)
                begin rgb_r<=8'h00; rgb_g<=8'hff;  rgb_b<=8'h00;  end  //Green
            else if(pix_xpos ==( H_ACTIVE / 8 ) * 4)
                begin rgb_r<=8'hff; rgb_g<=8'h00;  rgb_b<=8'hff;  end  //Magenta
            else if(pix_xpos ==( H_ACTIVE / 8 ) * 5)
                begin rgb_r<=8'hff; rgb_g<=8'h00;  rgb_b<=8'h00;  end  //Red
            else if(pix_xpos ==( H_ACTIVE / 8 ) * 6)
                begin rgb_r<=8'h00; rgb_g<=8'h00;  rgb_b<=8'hff;  end  //Blue
            else if(pix_xpos ==( H_ACTIVE / 8 ) * 7)
                begin rgb_r<=8'h00; rgb_g<=8'h00;  rgb_b<=8'h00;  end  //Black
        end
        else begin
            rgb_r<=8'h00; rgb_g<=8'h00;  rgb_b<=8'h00; 
        end
    end    


endmodule