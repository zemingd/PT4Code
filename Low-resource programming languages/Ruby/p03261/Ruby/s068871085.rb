n = gets.to_i
words = Array.new(n){gets.chomp}
# p words
for i in 0..words.length-2
  if words[i][-1] != words[i+1][0]
    puts "No"
    exit
  end
end

for i in 0..words.length-1
  if words.count(words[i]) > 1
    puts "No"
    exit
  end
end

puts "Yes"
