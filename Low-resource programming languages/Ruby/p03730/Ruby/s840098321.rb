a,b,c = gets.chomp.split(' ').map{|n| n.to_i}
f = true
for i in 1..100 do
  if a * i % b == c
    puts "YES"
    f = false
    break
  end
end

puts "NO" if f