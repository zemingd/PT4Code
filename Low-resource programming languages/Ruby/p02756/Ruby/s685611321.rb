s = gets.chomp.split('')
q = gets.chomp.to_i
querry = q.times.map do
  gets.chomp.split
end

querry.each do |val|
  t, f, c = val
  t = t.to_i
  if t == 1
    s.reverse!
  elsif t == 2
    f = f.to_i
    if f == 1
      s = [c] << s
    elsif f == 2
      s << [c]
    end
  end
end

puts s.join