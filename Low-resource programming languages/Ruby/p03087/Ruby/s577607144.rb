N,Q = gets.split.map(&:to_i)
s = gets.chomp
ac = Array.new(N,0)

(N-1).times do |i|
    ac[i+1] = (s[i] == "A" && s[i+1] == "C") ? ac[i] + 1 : ac[i]
end

Q.times do
  l,r = gets.split.map(&:to_i)
  puts ac[r-1]-ac[l-1]
end
