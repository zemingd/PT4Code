gets.split.map(&:to_i).then do |a, b, c, d|
  while a > 0 && c > 0
    c -= b
    a -= d
  end

  puts c > 0 ? 'no' : 'yes'
end