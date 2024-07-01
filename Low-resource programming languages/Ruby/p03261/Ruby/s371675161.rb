n = gets.to_i
words = []

n.times do 
  words.push(gets.chomp)
end

success_flag = true

(n-1).times do |i|
  if words[i][-1] != words[i+1][0]
    success_flag = false
  end
end

if success_flag && n == words.uniq.length
  puts 'Yes'
else
  puts 'No'
end