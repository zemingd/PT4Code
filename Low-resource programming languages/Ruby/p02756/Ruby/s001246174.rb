# frozen_string_literal: true
s = gets.chomp
q = gets.chomp.to_i
is_reverse = false

q.times do
  val = gets.chomp.split
  t, f, c = val
  t = t.to_i
  if t == 1
    is_reverse = !is_reverse
  elsif t == 2
    f = f.to_i
    if f == 1 && is_reverse == false || f == 2 && is_reverse == true
      s = c << s
    elsif f == 2 && is_reverse == false || f == 1 && is_reverse == true
      s << c
    end
  end
end

s.reverse! if is_reverse

puts s