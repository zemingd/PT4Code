a, b, c, d = gets.split(' ').map(&:to_i)

takahashi = c.quo(b).to_f.ceil
aoki = a.quo(d).to_f.ceil + 1

puts takahashi <= aoki ? 'Yes' : 'No'