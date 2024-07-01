N_GROUP,NUM_A,NUM_B,NUM_C,NUM_D,NUM_E = (0...6).map { gets.to_i }
MIN = [NUM_A,NUM_B,NUM_C,NUM_D,NUM_E].min
if MIN > N_GROUP
  puts 5
else
  time = N_GROUP / MIN
  time += 1 if N_GROUP % MIN != 0
  puts time+4
end
