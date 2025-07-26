module sine_tb2();
    reg clk,rst;
    wire [0:15]sine_out;

    sine_wave dut(.clk(clk),.rst(rst),.sine_out(sine_out));

    always begin
      clk=1'b0;
      #10;
      clk=1'b1;
      #10;
    end

    initial begin
      rst=1'b0;
      #10;

      rst=1'b1;
      #10;

      rst=1'b0;
      #10;

      rst=1'b0;
      #10;

      rst=1'b0;
      #10;

      rst=1'b0;
      #10;

      rst=1'b0;
      #10;

      rst=1'b0;
      #10;

      rst=1'b0;
      #10;

      rst=1'b0;
      #10;
      $finish;
    end

   


    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
    end


endmodule