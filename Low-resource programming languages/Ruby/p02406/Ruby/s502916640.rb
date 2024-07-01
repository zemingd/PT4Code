i = gets.chomp.to_i

a = []
1.step(i) do |i| 
  if i % 3 == 0
    a.push(i)
  elsif i % 10 == 3
    a.push(i)
  end 
end

puts " "+a*" "