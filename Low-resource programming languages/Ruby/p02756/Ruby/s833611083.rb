s = gets.strip
q = gets.to_i

pre = ''
suf = ''

reversed = false

q.times do |i|
  t, f, char = gets.split
  if t == '1'
    reversed = !reversed
  elsif t == '2'
    if f == '1'
      if reversed
        suf = suf + char
      else
        pre = char + pre
      end
    elsif f == '2'
      if reversed
        pre = pre << char
      else
        suf = suf << char
      end
    end
  end
end

s = pre.reverse + s + suf

if reversed
  puts s.reverse!
else
  puts s
end

