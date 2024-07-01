# frozen_string_literal: true

s = gets.chomp

if s[0] == s[1] || s[1] == s[2] || s[2] == s[3] || s[3] == s[4]
  puts 'Bad'
else
  puts 'Gooe'
end
