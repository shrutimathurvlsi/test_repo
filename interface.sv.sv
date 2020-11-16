interface alu_if(input logic clk);
  
  //---------------------------------------
  //declaring the signals
  //---------------------------------------
  logic [3:0]a;
  logic [3:0]b;
  logic [3:0]i;
  logic v;
  logic [5:0]s;
  
  //---------------------------------------
  //driver clocking block
  //---------------------------------------
  clocking driver_cb @(posedge clk);
    default input #1 output #1;
    output a;
    output b;
    output i;
    output v;
    input s;  
  endclocking
  
  //---------------------------------------
  //monitor clocking block
  //---------------------------------------
  clocking monitor_cb @(posedge clk);
    default input #1 output #1;
    input a;
    input b;
    input i;
    input v;
    input s;  
  endclocking
  
  //---------------------------------------
  //driver modport
  //---------------------------------------
  modport DRIVER  (clocking driver_cb,input clk);
      //---------------------------------------
  //monitor modport  
  //---------------------------------------
  modport MONITOR (clocking monitor_cb,input clk);
  
endinterface

