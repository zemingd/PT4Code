## https://qiita.com/shshimamo/items/5a458ecc88e7c24d5112

P, Q, R = gets.chomp.split.map(&:to_i)

array = [P + Q, Q + R, R + P]

puts array.min