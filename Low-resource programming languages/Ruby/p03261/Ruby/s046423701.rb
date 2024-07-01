n = gets.to_i
words = []
flag = true
for i in 1..n do
  word = gets.chomp
  first = word.split('')[0]
  last = first if i == 1
  if words.include?(word) || first != last
    flag =  false
  else
    last = word.split('')[-1]
    words << word
  end
end
puts flag == true ? "Yes" : "No"