module washing_test;
reg start, clk, rst;
wire [11:0]count;
wire done;
wire[39:0] state;
washing dut (start,clk,rst,count,done,state);

always begin
        #0.5 clk = ~clk;
    end

    initial begin
        clk = 0;
        rst = 1;
        #2 rst = 0;
	#5 start=1; 
        #2500 $finish;
    end
endmodule