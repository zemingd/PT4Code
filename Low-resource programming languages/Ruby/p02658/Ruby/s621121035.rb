N = gets.to_i
a = gets.split.map(&:to_i)
result = a.inject{|a, b| a * b }
if result <= 10 ** 18
   puts result
else
    puts -1
end
