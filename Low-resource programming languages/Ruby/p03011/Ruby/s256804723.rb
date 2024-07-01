P,Q,R = gets.split(" ").map(&:to_i);
time = [P + Q, Q + R, R + P]
puts time.min