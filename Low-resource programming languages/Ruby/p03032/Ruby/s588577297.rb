n, k = gets.to_s.split.map{|t| t.to_i }
v    = gets.to_s.split.map{|t| t.to_i }

rev = v.reverse

s_a = 0
ans = 0
(n+1).times do |a|
  
  s_a += v[a-1] if a > 0
  s = s_a
  [n-a+1, k-a+1].min.times do |b|
    s += rev[b-1] if b > 0
    q = v[0, a] + rev[0, b]
    q.sort!
    rem_k = [a+b, k-a-b].min
    toridasu = 0
    rem_k.times{|i| q[i] < 0 ? (toridasu += q[i]) : break }
    ans = s - toridasu if ans < s - toridasu
  end
end

puts ans