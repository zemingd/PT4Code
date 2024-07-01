N = gets.to_i
words = N.times.map { gets.chomp }
used = {}
last_ch = nil
is_ok = words.all? do |w|
  break false if used[w]
  used[w] = true
  ret = true
  if last_ch
    ret = last_ch == w[0]
  end
  last_ch = w[-1]
  ret
end
puts(is_ok ? 'Yes' : 'No')
