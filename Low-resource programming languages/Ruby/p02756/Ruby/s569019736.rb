s = gets.chomp
q = gets.to_i

r = false
ff = ""
b = ""
q.times do
  q, f, c = gets.chomp.split
  if q.to_i == 1
    r = !r
  elsif f.to_i == 1
    if r
      # s = s + c
      b += c
    else
      # s = c + s
      ff = c + ff
    end
  else
    if r
      # s = c + s
      ff = c + ff
    else
      # s = s + c
      b += c
    end
  end
end

s = ff + s + b
print r ? s.reverse : s