S = gets.chomp

def palindrom?(s)
  s == s.reverse
end

result = palindrom?(S) && palindrom?(S[0..((S.size - 1) / 2 - 1)]) && palindrom?(S[((S.size + 3) / 2 - 1)..-1])

if (result) then
  puts "Yes"
else
  puts "No"
end