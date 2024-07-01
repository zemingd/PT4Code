def max(a,b); a > b ? a : b; end
  
N,K = gets.split.map(&:to_i)
V = gets.split.map(&:to_i)
L = Array.new(N + 1, 0)
R = Array.new(N + 1, 0)

V.each.with_index(1){|v,i| L[i] = L[i - 1] + v }
V.reverse_each.with_index(1){|v,i| R[i] = R[i - 1] + v }

ans = 0
(0 .. N).each do |l|
  break if l > K
  (0 .. N).each do |r|
    break if l + r > K || l + r > N
    
    u0 = V.select
          .with_index{|v,i| v < 0 && i < l || i >= N - r }
          .min(K - (l + r))
          .inject(0,&:+)
    
    ans = max(ans, L[l] + R[r] - u0)
  end
end
puts ans