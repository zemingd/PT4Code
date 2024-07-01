n = gets.to_i
s = gets.chomp

if s.size != n
  puts "No"
  exit
end

unless s.match(/\A[a-z]+\z/)
  puts "No"
  exit
end

m = s.size / 2 - 1
if s[0..m] == s[m + 1..]
  puts "Yes"
else
  puts "No"
end
