N,L = gets.chomp.split.map(&:to_i)
strings = N.times.map{ gets.chomp.to_s }
strings.sort!
output = ""
strings.each{|string|
  output += string  
}
puts output