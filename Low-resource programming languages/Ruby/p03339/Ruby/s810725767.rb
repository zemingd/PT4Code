class Array
  def cumsum; s = 0; map{|k| s += k } end
end

class String
  
  # t : 初項に0を置くならt=1
  def fd(x,t=0);
    res = Array.new(size+t,0);
    each_char.with_index{|c,i| res[i+t] += 1 if c == x }
    res
  end
  
  def cfd(x,t=0); fd(x).cumsum end
end

n = gets.to_i
s = gets.chomp

w2e = s.cfd('W')
e2w = s.reverse.cfd('E').reverse

ans = [w2e[-2], e2w[1]].min

(1..(n-2)).each do |i|
  t = w2e[i-1] + e2w[i+1]
  ans = t if ans > t
end

puts ans