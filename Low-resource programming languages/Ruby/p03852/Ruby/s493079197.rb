c = gets.chomp

vowels = ['a','e','i','o','u']

n = 0
str = 'consonant'
until vowels[n].nil?
  if c == vowels[n]
    str = 'vowel'
  end
  n+=1
end

puts str