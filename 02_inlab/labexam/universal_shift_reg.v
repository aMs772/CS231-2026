module universal_shift_reg (
    input clk,
    input rst,
    input [1:0] mode,
    input serial_in,
    input [3:0] parallel_in,
    output [3:0] q
);
    // TODO: Implement the universal shift register.
    reg [3:0] temp;
    assign q = temp;

    always @(posedge clk) begin
        if (rst) temp <= 4'b0000;
        else begin 
            case (mode)
                2'b10 : temp <= {temp[2:0], serial_in};
                2'b01 : temp <= {serial_in, temp[3:1]};
                2'b11 : temp <= parallel_in;
                default: temp <= temp;
            endcase
        end    
    end

endmodule