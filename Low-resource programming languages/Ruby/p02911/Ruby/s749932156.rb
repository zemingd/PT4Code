=begin
N K Q
A1
A2
...
Aq
=end

n, k, q = gets.chomp.split(" ").map(&:to_i)
as = q.times.map do
  gets.chomp.to_i
end

ary = Array.new(n, 0)

as.each do |a|
  ary[a-1] += 1
end

n.times do |i|
  if (k - q + ary[i]) > 0
    puts "Yes"
  else
    puts "No"
  end
end
