a = gets.chomp.split(" ").map { |e|e.to_i  }
q = gets.chomp.to_i
ans = []
q.times do |i|
  b, c = gets.chomp.split(" ").map { |e|e.to_i  }
  a.map!{|e|e==b ? c : e}
  ans << a.sum
end

puts ans
