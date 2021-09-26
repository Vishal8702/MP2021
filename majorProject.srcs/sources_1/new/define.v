// ctrl+c ctrl+c/ ctrl+u
/* ctrl+shift+a  */

`ifndef define.v

`define dataWidth   31:0 
`define funct3width 2:0  

// function 3 codes //
// `define funct3_add_sub  'b000
// `define funct3_sll      'b001
// `define funct3_slt      'b010
// `define funct3_sltu     'b011
// `define funct3_xor      'b100
// `define funct3_srl_sra  'b101
// `define funct3_or       'b110
// `define funct3_and      'b111

`define funct3_add      'b0000
`define funct3_sll      'b0001
`define funct3_slt      'b0010
`define funct3_sltu     'b0011
`define funct3_xor      'b0100
`define funct3_srl      'b0101
`define funct3_or       'b0110
`define funct3_and      'b0111
`define funct3_sub      'b1000
`define funct3_sra      'b1101

`endif