`timescale 1ns / 1ps
module LED(
    input  CLK,
    input  RSTn,
    output LED1,
    output LED2
    );
    
    parameter T1MS = 26'd5_000_000 ;
    reg [25:0]time_count;
    always@(posedge CLK or negedge RSTn)
        if(!RSTn)begin
            time_count<=26'd0;
        end
        else begin
            if(time_count>=T1MS-1'b1)
                time_count<=26'd0;
            else time_count<=time_count+1'b1;
        end
        
    reg [1:0]led_state;
    always@(posedge CLK or negedge RSTn)
        if(!RSTn)begin
             led_state<=2'd0;
        end
        else begin
             if(time_count==T1MS-1'b1)begin
                if(led_state>=2'd1)led_state<=2'd0;
                else led_state<=led_state+1'b1;
            end
        end    
      
      assign LED1= (led_state==2'd0)?1'b1:1'b0;
      assign LED2= (led_state==2'd1)?1'b1:1'b0;
      
endmodule