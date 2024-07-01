S = gets.chomp
cnt = S.scan('hi').length

if S.size / 2 == cnt
  puts "Yes"
else
  puts "No"
end
