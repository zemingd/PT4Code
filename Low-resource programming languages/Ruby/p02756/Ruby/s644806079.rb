s = gets.chomp
q = gets.to_i

cnt = 0
sl = []
sr = []
q.times do
  t, f, c = gets.chomp.split
  if t == "1"
    cnt += 1
  elsif t == "2"
    if f.to_i % 2 + cnt % 2 == 1
      sl.unshift(c)
    else
      sr.push(c)
    end
  end
end

if cnt % 2 != 0
  puts sr.reverse.join("") + s.reverse + sl.reverse.join("")
else
  puts sl.join("") + s + sr.join("")
end