N = gets.to_i
A = gets.split.map(&:to_i)
G = A.each_with_object(Hash.new(0)) {|a,h| h[a] += 1 }
S = G.each_with_object({}) do |(k,v),h|
  h[v] ||= (v*(v-1))/2
  v -= 1
  h[v] ||= (v*(v-1))/2 if v > 1
end

total = G.inject(0) {|r,(k,v)| r + S[v] }
A.each {|a| puts total - S[G[a]] + (S[G[a]-1]||0) }
