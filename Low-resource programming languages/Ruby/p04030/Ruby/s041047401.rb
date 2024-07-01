s = gets.chomp
res = ""
s.each_char { |c|
  case c
  when '0'
    res += '0'
  when '1'
    res += '1'
  when 'B'
    res.slice!(-1, 1)
  end
}
puts res
