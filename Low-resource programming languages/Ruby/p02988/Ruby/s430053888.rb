n = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)
count = 0
0.upto(n-3) do |i|
  if (p[i] < p[i+1]) && (p[i+1] < p[i+2]) then
    count += 1
  elsif (p[i] > p[i+1]) && (p[i+1] > p[i+2]) then
    count += 1
  end
end
puts count