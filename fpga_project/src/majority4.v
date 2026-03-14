module majority4 (
    input a, b, c, d,
    output y
);
    // 4 girişten en az 3'ü 1 ise çıkış 1 olur
    assign y = (a & b & c) | (a & b & d) | (a & c & d) | (b & c & d);
endmodule