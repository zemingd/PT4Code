a, b, c, d = gets.split().map(&:to_i)

taka = (a / d.to_f).ceil
aoki = (c / b.to_f).ceil

puts taka >= aoki ? "Yes" : "No"