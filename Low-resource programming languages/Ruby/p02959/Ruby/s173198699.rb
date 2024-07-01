n = gets.chomp.to_i
line_a = gets.chomp.split(' ')
line_b = gets.chomp.split(' ')

taoseru = 0
line_b.map do |val|
  taoseru += val.to_i
end

while n >= 0
  amari = line_b[n].to_i - line_a[n + 1].to_i
  amari = 0 if amari.negative?
  line_b[n] = amari

  amari = line_b[n] - line_a[n].to_i
  amari = 0 if amari.negative?
  line_b[n] = amari

  amari = line_a[n].to_i - line_b[n]
  amari = 0 if amari.negative?
  line_a[n] = amari

  n -= 1
end

nokori = 0
line_b.map do |val|
  nokori += val.to_i
end

puts taoseru - nokori
