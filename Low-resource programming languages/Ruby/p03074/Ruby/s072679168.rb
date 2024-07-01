n,k=gets.split.map(&:to_i)
s = gets
if k.zero?
  @g = Regexp.new("^1*")
else
  @g = Regexp.new("^((1*0*)" + ("1*0*" * (k-1)) + "1*)")
end

def f(s)
  m = s.match(@g)
  return 0 if m.to_s==''
  return [m.to_s.size, f(s[m.end(2)..-1])].max
end

p f(s)
