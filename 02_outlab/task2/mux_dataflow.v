// ../task1/mux_dataflow.v
module mux_dataflow (
    input wire a,
    input wire b,
    input wire sel,
    output wire y
);
    assign y = sel ? b : a;
endmodule
