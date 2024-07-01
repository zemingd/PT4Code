s = gets.chomp
q = gets.to_i

cnt = 0
prefix = ""
suffix = ""
q.times do
  t, f, c = gets.chomp.split
  if t == "1"
    cnt += 1
    prefix, suffix = suffix.reverse, prefix.reverse
  elsif t == "2"
    if f == "1"
      prefix = c + prefix
    elsif f == "2"
      suffix = suffix + c
    end
  end
end

if cnt % 2 != 0
  s = s.reverse
end
puts prefix + s + suffix