s = gets.chomp
q = gets.to_i
queries = q.times.map { gets.split }

reversed = false

queries.each do |t, f, c|
  if t.to_i == 1
    reversed = !reversed
    next
  end

  if f.to_i == 1
    if !reversed
      s.insert(0, c)
    else
      s << c
    end
  elsif f.to_i == 2
    if !reversed
      s << c
    else
      s.insert(0, c)
    end
  end
end

puts reversed ? s.reverse! : s