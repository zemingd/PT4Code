N = gets.chomp.to_i
hash = Hash.new(0)
ary = gets.chomp.split.each { |i| hash[i.to_i] += 1 }
1.step(N) do |i|
  puts hash[i]
end