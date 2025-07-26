module pam_tb();
    reg clk,rst;
    wire [0:31]pam_out;

    pam dut(.clk(clk),.rst(rst),.pam_out(pam_out));

    always begin
      clk=1'b0;
      #10;
      clk=1'b1;
      #10;
    end

    initial begin
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
      $dumpvars(0,dut);
    end


endmodule