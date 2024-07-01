n = gets.chomp
f = false

(1..9).map{ |i|
  k = i * 100 + i * 10 + i
  if n.include?(k.to_s)
    puts "YES"
    f = true
    break
  end
}

if !f and n.include?("000")
  puts "YES"
elsif !f
  puts "NO"
end
