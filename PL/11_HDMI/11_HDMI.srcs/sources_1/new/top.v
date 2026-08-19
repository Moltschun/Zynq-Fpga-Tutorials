`timescale 1ns / 1ps
module top(
    input clk,
    output[2:0] TMDS_DATA_p,
    output[2:0] TMDS_DATA_n,
    output      TMDS_CLK_p,
    output      TMDS_CLK_n
    );
    
    wire clk_40m;
    wire clk_200m;
    clk_wiz_0 u2(
        .clk_in1(clk),
        .clk_out1(clk_40m),
        .clk_out2(clk_200m)
    );
    
    wire VGA_HS,VGA_VS,VGA_DE;
    wire[7:0] R,G,B;


    color_bar u4 (
        .clk(clk_40m),         
	    .rst_n(1'b1),         
	    .hsync(VGA_HS),    
	    .vsync(VGA_VS),         
	    .de(VGA_DE),         
        .rgb_r(R),        
        .rgb_g(G),        
        .rgb_b(B)         
);
    
    
    rgb2dvi_0 u1(
        .aRst_n(1'b1),
        .SerialClk(clk_200m),
        .PixelClk(clk_40m),
        .TMDS_Clk_p(TMDS_CLK_p),
        .TMDS_Clk_n(TMDS_CLK_n),
        .TMDS_Data_p(TMDS_DATA_p),
        .TMDS_Data_n(TMDS_DATA_n),
        .vid_pData({R,B,G}),  
        .vid_pHSync(VGA_HS),
        .vid_pVSync(VGA_VS),
        .vid_pVDE(VGA_DE)
    );
endmodule
