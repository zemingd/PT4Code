n = gets.chomp.to_i
a = gets.chomp.split(" ").map{|i|i.to_i}
cnum = Array.new(n, 0)
a.each do |num|
  cnum[num] += 1
end

1.upto(n) do |i|
  puts cnum[i]
end