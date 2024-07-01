n = gets.chomp.to_i

a = []
1.step(n) do |i| 
  a.push(i) if i % 3 == 0 || i.to_s.include?("3")
end
puts " "+a*" "