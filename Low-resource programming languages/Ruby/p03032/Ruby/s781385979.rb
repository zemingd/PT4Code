class Array
  def cumsum(s = 0)
    map{|t| s += t }
  end
end

# 23:13- 解説blogも見た
n, k = gets.to_s.split.map{|t| t.to_i }
v    = gets.to_s.split.map{|t| t.to_i }

rev = v.reverse
l = v.cumsum
r = rev.cumsum

s_a = 0
ans = 0
(n+1).times do |a|
  
  s_a += v[a-1] if a > 0
  s = s_a
  (k-a+1).times do |b|
    s += rev[b-1] if b > 0
    q = v[0, a] + rev[0, b]
    q.sort!
    rem_k = [a+b, k-a-b].min
    toridasu = 0
    rem_k.times do |i|
      q[i] < 0 ? (toridasu += q[i]) : break
    end
    ans = s - toridasu if ans < s - toridasu
  end
end

puts ans