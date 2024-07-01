N = gets.chomp.to_i

ans = "Yes"
words = []
N.times do |i|
  word = gets.chomp
  if words.include?(word)
    ans = "No"
  end
  words << word
end

unless ans == "No"
  for i in 1..(words.size - 1) do
    word = words[i]
    if word[0] != words[i-1][-1]
      ans = "No"
      break
    end
  end
end
puts ans