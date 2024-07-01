class Array
  def cumgcd;
    res = self[0];
    map{|t| res = t.gcd(res) }
  end
end

n = gets.to_i
a = gets.split.map(&:to_i)

cg  = a.cumgcd
cgr = a.reverse.cumgcd.reverse

ans = cgr[1]
ans = cgr[-2] if ans < cgr[-2]

(n-2).times do |i|
  t = cg[i].gcd(cgr[i+2])
  ans = t if ans < t
end

p ans