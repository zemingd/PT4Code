require 'prime'
n,*a=$<.map &:to_i
h=Hash.new(0)
a.each do |e|
  g=Prime.prime_division(e)
  g.each do |ee|
    h[ee[0]] = [h[ee[0]],ee[1]].max
  end
end
c=1
h.each do |e,v|
  c*=e**v
end
p c