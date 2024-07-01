n = gets.to_i
s = gets.chomp

if s.size != n || s.size < 2
  puts "No"
  exit
end

unless s.match(/\A[a-z]+\z/)
  puts "No"
  exit
end

m = s.size / 2 - 1
if s[0..m] == s[m + 1..s.size]
  puts "Yes"
else
  puts "No"
end
