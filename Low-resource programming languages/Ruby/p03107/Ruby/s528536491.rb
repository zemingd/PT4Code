s = gets.chomp

count = 0

i=0
s.length.times do

  if s[i] == "0" && s[i+1] == "1" || s[i] == "1" && s[i+1] == "0"
    count += 2
    s.slice!(i, 2)
  elsif s[i] == "0" && s[i-1] == "1" || s[i] == "1" && s[i-1] == "0"
    count += 2
    s.slice!(i-1, 2)
    i -= 1
  else
    i += 1
  end
end

puts count
