n = gets.to_i
s = $<.map(&:to_i).sort
ans = s.inject(:+)
s.delete_if { |x| x % 10 == 0 }
if s.empty?
  ans = 0
else
  ans -= s.min unless ans % 10 != 0
end
p ans