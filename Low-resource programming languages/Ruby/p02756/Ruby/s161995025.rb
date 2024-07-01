s, _, *queries = readlines.map(&:chomp)
queries.each do |q|
  t, f, c = q.split
  if t == '1'
    s = s.reverse
  else
    if f == '1'
      s = c + s
    else
      s = s + c
    end
  end
end
puts s