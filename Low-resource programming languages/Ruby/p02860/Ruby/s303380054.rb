n = gets.to_i
s = gets.chomp

if n % 2 == 1
  puts :No
  exit
end

puts s[0..n/2-1] == s[n/2..n-1] ? :Yes : :No
