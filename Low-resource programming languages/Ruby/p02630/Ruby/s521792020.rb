n = gets.chomp.to_i
a = gets.chomp.split(" ").map { |e|e.to_i  }
q = gets.chomp.to_i
ans = []
q.times do |i|
  b, c = gets.chomp.split(" ").map { |e|e.to_i  }
  sum = 0
  a.map!{|e|e==b ? c : e}
  ans << a.sum
end

puts ans
