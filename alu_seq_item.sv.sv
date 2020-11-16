x
class alu_seq_item extends uvm_sequence_item;
  //---------------------------------------
  //data and control fields
  //---------------------------------------
  rand logic [3:0]a;
  randc logic[3:0]b;
  randc logic [3:0]i;
  logic [5:0]s;
  
  //---------------------------------------
  //Utility and Field macros
  //---------------------------------------
  `uvm_object_utils(alu_seq_item)
   //`uvm_field_int(a,UVM_ALL_ON)
    //`uvm_field_int(b,UVM_ALL_ON)
   // `uvm_field_int(i,UVM_ALL_ON)
  //`uvm_object_utils_end
  
  //---------------------------------------
  //Constructor
  //---------------------------------------
  function new(string name = "alu_seq_item");
    super.new(name);
  endfunction
  
  //---------------------------------------
  //constaint, to generate any one among write and read
  //---------------------------------------
  constraint arith{ i>=0; i<3; a<10; b<10;};
  
endclass

