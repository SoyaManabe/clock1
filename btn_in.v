module BTN_IN (
    input   CLK, RST,
    input       [2:0]   nBIN,
    output reg  [2:0]   BOUT
);

/*Make 40Hz signal by sepalating 50MHz with 1250000*/
reg [20:0]

wire en40hz = (cnt==1250000-1);

always @(posedge CLK) begin
    if (RST)
        cnt <= 21'b0;
    else if (en40hz)
        cnt <= 21'b0;
    else
        cnt <= cnt + 21'b1; 
end

