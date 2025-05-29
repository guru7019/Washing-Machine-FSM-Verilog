`timescale 1s/10ms
module washing(start,clk,rst,count,done,state);
input start,clk,rst;
output reg[11:0] count;
output reg done;
output reg[39:0] state;

reg[2:0]ps;
reg[2:0]ns;

parameter idle=3'b000;
parameter fill=3'b001;
parameter wash=3'b010;
parameter rinse=3'b011;
parameter drain=3'b100;
parameter spin =3'b101;
parameter over=3'b110;

always@(posedge clk) begin
if(rst) begin
	ps<=idle;
	count=0;
	end
else begin
	ps<=ns;
	count=count+1;
	end
end

always@(ps,count) begin
case(ps)
	idle: if(start==1 & count<10) begin
		ns=fill;
		done=0;
		state="fill"; end
		else begin
		ns=idle;
		state="idle";
		done=0; end

	fill: if(count>120 & count<1321) begin
		ns=wash;
		done=0; 
		state="wash"; end
		else begin
		ns=fill;
		done=0; 
		state="fill"; end

	wash: if(count>1320 & count<1921) begin
		ns=rinse;
		done=0; 
		state="rinse"; end
		else begin
		ns=wash;
		done=0; 
		state="wash"; end

	rinse: if(count>1920 & count<2101) begin
		ns=drain;
		done=0; 
		state="drain"; end
		else begin
		ns=rinse;
		done=0; 
		state="rinse"; end

	drain: if(count>2100 & count<2401) begin
		ns=spin;
		done=0; 
		state="spin"; end
		else begin
		ns=drain;
		done=0; 
		state="drain"; end

	spin: if(count>2400 & count<2431) begin
		ns=over;
		done=1; 
		state="over"; end
		else begin
		ns=spin;
		done=0; 
		state="spin"; end

	over: if(count>2400& count<2431) begin
		done=1;
		state ="over";
		end
		else begin 
		ns=idle;
		done=0;
		state="idle"; end	

	default: begin 
		ns=idle;
		done=0;
		state="idle";
		end

	endcase
	end
endmodule 


