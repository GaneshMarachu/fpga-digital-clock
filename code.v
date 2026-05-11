module clk(input clk,output reg [3:0]an,output reg [7:0]ca);
reg [31:0]cnt;
reg clkhz;
reg [31:0]cnt1=0;
reg clk1hz=0;
reg [1:0]sel=0;
reg [3:0]h0,h1,m0,m1,s0,s1;
wire [7:0]ca1,ca2,ca3,ca4;
initial begin 
clkhz<=0;
cnt<=0;
end
always@(posedge clk) begin
if (cnt==100000) begin
  cnt<=0;
  clkhz<=~clkhz;
  end
 else
   cnt<=cnt+1;
end
always@(posedge clk) begin
if (cnt1==24999999) begin
  cnt1<=0;
  clk1hz<=~clk1hz;
  end
 else
   cnt1<=cnt1+1;
end
always @(posedge clkhz) begin 
case(sel)
0:begin an<=4'b0001; ca<=ca1; end
1:begin an<=4'b0010; ca<=ca2; end
2:begin an<=4'b0100; ca<=ca3; end
3:begin an<=4'b1000; ca<=ca4; end
endcase
sel<=sel+1;
end
display d1(s0,ca1);
display d2(s1,ca2);
display d3(m0,ca3);
display d4(m1,ca4);
initial begin
h0=0;
h1=0;
m0=0;
m1=0;
s0=0;
s1=0;
end
always @(posedge clk1hz) begin
   if(h0==2&&h1==3&&m0==5&&m1==9&&s0==5&&s1==9) begin
   h0<=0;
   h1<=0;
   m0<=0;
   m1<=0;
   s0<=0;
   s1<=0;
   end
   else begin
     s0<=s0+1;
     if(s0==9) begin
       s0<=0;
       s1<=s1+1;
       if(s1==5) begin
         s0<=0;
         s1<=0;
         m0<=m0+1;
         if(m0==9) begin
           s0<=0;
           s1<=0;
           m0<=0;
           m1<=m1+1;
           if(m1==5) begin
             s0<=0;
             s1<=0;
             m0<=0;
             m1<=0;
             h0<=h0+1;
           if(h0==9) begin
             s0<=0;
             s1<=0;
             m0<=0;
             m1<=0;
             h0<=0;
             h1<=h1+1;
           end
           end
           end
       end
     end
   end  
end
endmodule



module display(input [3:0]count,output reg [7:0]ca);
always @(*) begin
case(count)
0: begin ca = 8'b00000011; end
1: begin ca = 8'b10011111; end
2: begin ca = 8'b00100101; end
3: begin ca = 8'b00001101; end
4: begin ca = 8'b10011001; end
5: begin ca = 8'b01001001; end
6: begin ca = 8'b01000001; end
7: begin ca = 8'b00011111; end
8: begin ca = 8'b00000001; end
9: begin ca = 8'b00001001; end
endcase
end
endmodule
