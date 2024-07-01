a = gets.chomp.split.map(&:to_i)

a.length.times do |i|   ## lenght size で文字列を作ってる
  a[i] = a[i]
end

puts a.max - a.min