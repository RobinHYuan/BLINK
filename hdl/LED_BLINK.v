///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: LED_BLINK.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::SmartFusion2> <Die::M2S025> <Package::256 VF>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module Timer
(   
    input   wire    CLOCK_50,
    input   wire    reset,
    output  reg     LED
);

localparam CLK_THRESHOLD = 1_000_000;
reg [$clog2(CLK_THRESHOLD) + 1 : 0] counter ;
wire CLK_OUT, LOCKED, CLK_LOCKED;

assign CLK_LOCKED = CLK_OUT & LOCKED;
FCCC_C0 PLL
(
    .CLK0(CLOCK_50),
    .GL0(CLK_OUT),
    .LOCK(LOCKED)
);
always@(posedge CLK_LOCKED or posedge reset)
    if(reset) counter <= 0;
    else begin
        {counter} <= (counter === CLK_THRESHOLD - 1'b1) ? 0 : counter + 1'b1;
        {LED} <= (counter <= (CLK_THRESHOLD - 1'b1)>>> 2) ? 1 :0;
    end
endmodule
