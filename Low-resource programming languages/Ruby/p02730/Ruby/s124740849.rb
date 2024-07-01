input = gets.chop.split('')

def palindrome?(str)
  str == str.reverse
end

answer = true

answer = false if !palindrome?(input)
answer = false if !palindrome?(input[0..(input.count / 2)])

puts answer ? 'Yes' : 'No'
