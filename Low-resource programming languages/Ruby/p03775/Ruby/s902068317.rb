def min(a,b); a < b ? a : b; end
def max(a,b); a > b ? a : b; end

N = gets.to_i
ans = (1 .. Math.sqrt(N).floor).inject(N) do |s,a|
  N % a == 0 ? min(s, max(a.to_s.size, (N / a).to_s.size)) : s
end
puts ans