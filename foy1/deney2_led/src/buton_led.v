module buton_led (
input wire btn1, 
input wire btn2, 
output wire [5:0] led 
);
assign led[0] = btn1; 
assign led[1] = btn2;
assign led[2] = btn1 | btn2; 
assign led[3] = btn1 & btn2; 
assign led[4] = 1'b1; 
assign led[5] = 1'b1; 
endmodule