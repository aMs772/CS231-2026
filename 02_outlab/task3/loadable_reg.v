module loadable_reg (
    input wire clk,
    input wire rst,
    input wire load,
    input wire d,
    output reg q
);
    // Hint: instantiate mux_behavioral to compute the next value of q
    // (hold q if load is low, take d if load is high), then register
    // that value on the clock edge.

    wire temp;
    mux_behavioral mux1(.a(q), .b(d), .sel(load), .y(temp));

    always @(posedge clk) begin
        if (rst) q <= 1'b0;
        else begin
            q <= temp;
        end        
    end

endmodule
