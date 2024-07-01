s = gets.chomp.chars.map(&:ord).sort
t = gets.chomp.chars.map(&:ord).sort.reverse
s << 0
t << -1

t.length.times{ |i|
  s_min = s[i]
  t_max = t[i]
  if s[i].nil? || s_min < t_max
    puts 'Yes'
    break
  elsif s_min > t_max
    puts 'No'
    break
  end
}
