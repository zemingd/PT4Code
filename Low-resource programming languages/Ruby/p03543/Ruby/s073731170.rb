n = gets.chomp
f = false

(1..10).map{ |i|
  k = i * 100 + i * 10 + i
  if n.include?(k.to_s)
    puts "YES"
    f = true
  end
}

if !f
  puts "NO"
end
