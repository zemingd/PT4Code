N = gets.strip.to_i
string = ""
count = 0
N.times do |n|
  s = gets.strip.split('').sort!.join
  count += string.scan(/#{s}/).size
  string += s
end

puts count