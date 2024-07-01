min = 10
min_time = 0
sum=0
for cnt in 1..5 do
  line = gets
  line.chomp!
  tar = line.to_i
  if (tar % 10 == 0)
    sum += tar
  elsif (tar % 10 < min)
    if (min_time>0)
      sum += (min_time / 10 +1) *10
    end
    min_time = tar
    min = tar % 10
  else
    sum += (tar / 10 +1) *10
  end
end

if (min < 10)
  sum += min_time
end

puts sum
