N, K = gets.split.map(&:to_i)
D_array = gets.split.map(&:to_i)
ans = 0
N.upto(10*N) do |i|
  next if D_array.any? { |d| i.to_s.chars.map(&:to_i).include?(d) }

  puts i
  exit
end