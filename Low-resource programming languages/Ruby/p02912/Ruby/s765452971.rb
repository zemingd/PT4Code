n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort.reverse

s = []
s << a.shift

(m-1).times do
  if a.empty?
    s << s.shift / 2
  end

  if s[0] > a[0]
    s << s.shift / 2
  else
    s << a.shift / 2
  end
end

s += a
puts s.inject(:+)