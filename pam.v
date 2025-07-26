`include "sine_wave.v"
module pam(clk,rst,pam_out);
   input clk,rst;
   
   output reg [0:31]pam_out;
    
   sine_wave sin1(.clk(clk),.rst(rst),.sine_out(sine_out));

   reg [0:15] pulse=16'h0101;
   wire [0:15] sine_out;

   always @(posedge clk or negedge clk)begin
     
       if(rst==1'b1) begin
         pam_out=16'h0000;
       end
       else begin
         pam_out=pulse*sine_out;
       end
     end
   

endmodule