def apple_pie(a, p)
  (a * 3 + p) / 2
end

a, p = gets.split.map(&:to_i)
puts apple_pie(a, p)