s = gets.chomp

unless s == s.reverse
  puts "No"
  exit
end

s2 = s[0, ((s.length - 1) / 2)]

unless s2 == s2.reverse
  puts "No"
  exit
end

s3 = s[((s.length + 3) / 2 - 1) .. -1]

unless s3 == s3.reverse
  puts "No"
  exit
end

puts "Yes"