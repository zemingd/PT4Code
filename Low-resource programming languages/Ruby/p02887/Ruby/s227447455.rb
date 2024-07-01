n = gets.to_i
s = gets.chomp

array = []
i = 0
j = 1

loop do
  if s[i] == s[j]
    j += 1
  else
    array << s[i]
    i = j
    j += 1
  end
  break if i >= n
end

puts array.count
