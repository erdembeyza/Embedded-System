module led_desen (
input wire btn1,
input wire btn2,
output reg [5:0] led
);
always @(*) begin
case ({btn1, btn2})
2'b11: led = 6'b111111; 
2'b10: led = 6'b101010; 
2'b01: led = 6'b010101; 
2'b00: led = 6'b000000; 
default: led = 6'b111111;
endcase
end
endmodule