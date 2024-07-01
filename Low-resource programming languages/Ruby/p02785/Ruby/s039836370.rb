n,k = gets.split(" ").map(&:to_i)
hn = gets.split(" ").map(&:to_i)
if n < k
  p 0
elsif k.zero?
  p hn.inject(&:+)
elsif hn.length == n
  hns = hn.sort{|a, b| b.to_i <=> a.to_i }
  hns.slice!(0..k-1)

  p hns.inject(&:+)
end