n,k = gets.chomp.split(" ")
s = gets.chomp.split("")

if s[k.to_i-1] == "A"
  s[k.to_i-1] = "a"
elsif s[k.to_i-1] == "B"
  s[k.to_i-1] = "b"
elsif s[k.to_i-1] == "C"
  s[k.to_i-1] = "c"
end

puts s.join 