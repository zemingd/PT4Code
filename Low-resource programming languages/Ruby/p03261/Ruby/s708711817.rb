n = gets.to_i
ng_words = []
ans = 'Yes'
n.times do
  word = gets.chomp
  ans = 'No' if (!ng_words.empty? && ng_words[-1][-1] != word[0]) || !ng_words.find { |s| s == word }.nil?
  ng_words << word
end
puts ans