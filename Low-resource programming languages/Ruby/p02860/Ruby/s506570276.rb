n = gets.to_i
s = gets

if n/2 == 0 then
  puts "No"
else
  S = s.scan(/.{1,#{n/2}}/)
  if S[0] == S[1] then
    puts "Yes"
  else
    puts "No"
  end
end