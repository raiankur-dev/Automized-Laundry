module washing_machine_tb;

 reg clk, reset, door_close, start, filled, detergent_added, cycle_timeout, drained, spin_timeout;
 reg[1:0] coin;
 wire door_lock, motor_on, fill_value_on, drain_value_on, done, soap_wash, water_wash;
 wire[1:0] change;


 washing_machine uut(clk,reset,coin, door_close, start, filled, detergent_added,
                     cycle_timeout, drained, spin_timeout, door_lock, motor_on, fill_value_on, 
                     drain_value_on, done, soap_wash, water_wash,change);


 initial
 begin
 clk = 0;
 reset = 1;
 coin=2'b00;
 start = 0;
 door_close = 0;
 filled = 0;
 drained = 0;
 detergent_added = 0;
 cycle_timeout = 0;
 spin_timeout = 0;

 #5 reset=0;
 #10 coin=2'b10;
 #10 start=1;door_close=1;
 #10 filled=1;
 #10 detergent_added=1;
 #10 cycle_timeout=1;
 #20 drained=1; 
 #20 spin_timeout=1;
 #30 door_close=0;
     start=0; filled = 0;
     drained = 0;
     detergent_added = 0;
    cycle_timeout = 0;
    spin_timeout = 0;

 #20 coin=2'b00;
 #10 start=1;door_close=1;
 #10 filled=1;
 #10 detergent_added=1;
 #10 cycle_timeout=1;
 #10 drained=1; 
 #10 spin_timeout=1;
 #30 door_close=0;
     start=0; filled = 0;
     drained = 0;
     detergent_added = 0;
     cycle_timeout = 0;
     spin_timeout = 0;

 #10 coin=2'b01;
 #10 start=1;door_close=1;
 #10 filled=1;
 #10 detergent_added=1;
 #10 cycle_timeout=1;
 #10 drained=1; 
 #10 spin_timeout=1;
 #30 door_close=0;
     start=0; filled = 0;
     drained = 0;
     detergent_added = 0;
     cycle_timeout = 0;
     spin_timeout = 0;

#10 coin=2'b11;
#10 start=1;door_close=1;
#10 filled=1;
#10 detergent_added=1;

#10 cycle_timeout=1;
#20 drained=1;
#20 spin_timeout=1;
#20 $finish;
end

 
always
begin
#5 clk = ~clk;
end
endmodule
