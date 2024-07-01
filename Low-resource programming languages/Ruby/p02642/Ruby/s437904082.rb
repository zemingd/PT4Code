N = gets.to_i
A = gets.split.map(&:to_i).sort

MAX = A.max
mem = Array.new(MAX + 1,0)
A.each do |a|
  a.step(MAX, a) {|n| mem[n] += 1 }  
end
puts A.count {|i| mem[i] == 1 }