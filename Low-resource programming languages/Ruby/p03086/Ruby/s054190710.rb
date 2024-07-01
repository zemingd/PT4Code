str = gets.chomp
n = str.length
answer = 0
a = 0

for x in 0...n
  if str[x] == "A" || str[x] == "T" || str[x] == "G" || str[x] == "C"
    a += 1
  else
    if a > answer
      answer = a
    end
    a = 0
  end
end

if a > answer
  answer = a
end

puts answer