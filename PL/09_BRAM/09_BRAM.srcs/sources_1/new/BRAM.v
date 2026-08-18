`timescale 1ns / 1ps
module BRAM(
    input CLK
);
     
reg [3:0]addr_a;
reg [3:0]addr_b;
reg  wr_en_a;
reg  [1:0]mode=2'd0;
reg  [7:0]din_a;
wire  [7:0]dout_b;

always@(posedge CLK)begin
    if(mode==0)begin
        addr_a<=4'd0;
        din_a<=8'd0;
        addr_b<=4'd0;
        wr_en_a<=1'b1;
        mode<=2'd1;
    end
    else if(mode==1)begin
        if(addr_a==4'd15)begin
            mode<=2'd2;
            wr_en_a<=1'b0;
        end
        else begin
            addr_a<=addr_a+1'b1;
            din_a<=din_a+1'b1;
        end
    end
    else if(mode==2)begin
        if(addr_b==4'd15)begin
            mode<=2'd3;
        end
        else addr_b<=addr_b+1'b1;
    end
    else mode<=2'd0;
end


blk_mem_gen_0 u_bram (
  .clka(CLK),   
  .ena(1'b1),    
  .wea(wr_en_a),    
  .addra(addr_a),
  .dina(din_a),  
  .clkb(CLK),   
  .enb(1'b1),  
  .addrb(addr_b), 
  .doutb(dout_b) 
);  

ila_0 ila_u (
	.clk(CLK),
	.probe0(mode),
	.probe1(wr_en_a),
	.probe2(addr_a), 
	.probe3(din_a), 
	.probe4(addr_b), 
	.probe5(dout_b) 
);

endmodule