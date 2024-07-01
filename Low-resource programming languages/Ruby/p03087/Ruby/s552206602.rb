N,Q = gets.split(" ").map(&:to_i);
S = gets.chomp
t = Array.new(N+1, 0)
for i in 0..N-1
   if S[i, 2] === "AC"
    t[i+1] = t[i] + 1
   else
    t[i+1] = t[i]
   end
end
for i in 1..Q
  l,r = gets.split(" ").map(&:to_i);
  puts t[r-1] - t[l-1]
end