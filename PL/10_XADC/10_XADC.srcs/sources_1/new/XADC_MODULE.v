`timescale 1ns / 1ps

module XADC_MODULE(
    input vauxp9,
    input vauxn9,
    input clk
 );
    
   wire [4:0] channel_out;
   wire eoc_out;
   wire clk_100m;
   wire drdy_out;
   wire [15:0]do_out;
   reg [11:0]xadc_vauxp9_value;
   
always @(posedge clk_100m)begin
    if(drdy_out== 1'b1 && channel_out==5'h19)begin//19是 vauxp9通道的地址
        xadc_vauxp9_value <= do_out[15:4];   
    end 
    else begin
        xadc_vauxp9_value<= xadc_vauxp9_value;
    end
end

clk_wiz_0 clk_wiz_inst(
  .clk_out1(clk_100m),
  .clk_in1(clk)
 );


xadc_wiz_0 xadc_wiz_inst (
      .daddr_in({2'd0,channel_out}),
      .dclk_in(clk_100m),
      .den_in(eoc_out),
      .di_in(16'd0),
      .dwe_in(1'b0),
      .drdy_out(drdy_out),
      .do_out(do_out[15:0]),  
      .reset_in(1'b0),
      .vauxp9(vauxp9),
      .vauxn9(vauxn9),
      .channel_out(channel_out),
      .eoc_out(eoc_out),
      .eos_out(),
      .alarm_out(),
      .busy_out(),
      .vp_in(),
      .vn_in()
      );
      
 ila_0 u_ila(
    .clk(clk_100m),
    .probe0(xadc_vauxp9_value),
    .probe1(drdy_out)
 );
      
      
      
endmodule
