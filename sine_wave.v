module sine_wave(clk,rst,sine_out);
    input clk,rst;
    reg [0:3]index;
    reg [0:15]sine[0:15];

    output reg [0:15]sine_out;

    initial begin
        sine[0] = 16'h0000;
        sine[1] = 16'h3FFF;
        sine[2] = 16'h5A7E;
        sine[3] = 16'h6ED8;
        sine[4] = 16'h7FFF;
        sine[5] = 16'h6ED8;
        sine[6] = 16'h5A7E;
        sine[7] = 16'h3FFF;
        sine[8] = 16'h0000;
        sine[9] = 16'hC000;
        sine[10] = 16'hA581;
        sine[11] = 16'h9127;
        sine[12] = 16'h8000;
        sine[13] = 16'h9127;
        sine[14] = 16'hA581;
        sine[15] = 16'hC000;
    end

    always @(posedge clk or negedge clk) begin
        if (rst) begin
            index <= 0;
            sine_out <= 16'h0000;
        end else begin
            sine_out <= sine[index];
            index<=index+1;
        end
    end

    
endmodule