x, k, d = gets().chomp.split("\s").map{|x| x.to_i}

start_diff = x.abs #6
max_move = k * d #8

if start_diff > max_move
  puts start_diff - max_move
  exit()
end

steps = start_diff / d #1
moved = steps * d #4
rem = start_diff - moved #2
step_rem = k - steps #1

if step_rem.even?
  puts rem.abs
else
  puts (rem + d).abs > (rem - d).abs ? (rem - d).abs : (rem + d).abs
end
