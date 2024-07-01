# frozen_string_literal: true

n = gets.chomp.split('')
t = gets.chomp.split('')
i = 3
n.zip(t).each do |f, s|
  i -= 1if f != s
end
p i