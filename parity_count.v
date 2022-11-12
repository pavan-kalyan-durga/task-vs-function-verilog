module task_vs_function;
reg [7:0] reg_a;
reg [3:0] count;
reg parity;
integer i;

initial	begin
for(i=0;i<256;i=i+1) begin
reg_a=i;
ctr(reg_a,count);
parity = calc_parity (i); begin
if (parity ==1)	$display("number=%d (%b) , number of 1s = %d, parity = 0",reg_a,reg_a, count);
else			$display ("number=%d (%b) , number of 1s = %d, parity = 1",reg_a,reg_a, count); end
#100; 
end	end

task ctr(input [7:0] reg_a,output [3:0] count);	begin
count = 0;
while (reg_a)	begin
count = count + reg_a[0];
reg_a = reg_a >> 1;
end
end
endtask

function calc_parity;
input [7:0] address;
begin
calc_parity = ^address;
end
endfunction

endmodule