X, N = $stdin.gets.split.map {|i| i.to_i }
if N == 0
  puts X
  exit
end
P = $stdin.gets.split.map {|i| i.to_i }
p_map = Hash[P.map {|p| [p, true] }]
p_s = X
p_l = X
loop do
  if !p_map[p_s]
    puts p_s
    exit
  elsif !p_map[p_l]
    puts p_l
    exit
  end
  p_s -= 1
  p_l += 1
end
