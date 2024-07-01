n = gets.chomp
f = false

(1..9).map{ |i|
  k = i * 100 + i * 10 + i
  if n.include?(k.to_s)
    puts "Yes"
    f = true
    break
  end
}

if !f and n.include?("000")
  puts "Yes"
elsif !f
  puts "No"
end
