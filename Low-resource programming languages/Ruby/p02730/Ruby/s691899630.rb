s = gets.chomp

n = s.length
one = s.split('') == s.split('').reverse
two = s.split('')[0..(n-1)/2-1] == s.split('')[0..(n-1)/2-1].reverse
three = s.split('')[(n+3)/2-1..n-1] == s.split('')[(n+3)/2-1..n-1].reverse

puts one && two && three ? "Yes" : "No"
