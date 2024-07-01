a,b=gets.chomp.split(" ").map(&:to_i)
def uq(a,b)
  m=a.gcd(b)
  o=m.times.with_object([]) do |n,o|
    c=m-n
    o << c if a%c==0 && b%c==0
  end
  incr=0
  if o.length == 1
    incr += 1
  else
    o.each_with_index do |x,i|
      o[i.next..-1].each do |y|
        incr += 1 if x.gcd(y)==1
      end
    end
  end
  puts incr
end
uq(a,b)