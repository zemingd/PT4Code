a = []

gets.to_i.times do
  a << gets.to_i
end

prev_n = 0
os = false
res = 0

a.sort.each do |n|
  if n != prev_n
    if os
      res += 1
    end

    os = true
  else
    os = !os
  end

  prev_n = n
end

if os
  res += 1
end

puts res
