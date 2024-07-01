n,l=gets.split.map(&:to_i)
a = (l...l+n).to_a
if a.include?(0)
  p a.inject(&:+)
elsif a[0] > 0
  a.shift
  p a.inject(&:+)
else
  a.pop
  p a.inject(&:+)
end
