n =gets.to_i
s=gets.chomp.split("")
if n == 1
  puts "No"
  exit
end
puts s[0...(n/2)] == s[(n/2)...n] ? "Yes" : "No"