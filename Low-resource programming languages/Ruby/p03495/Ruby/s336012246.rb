n, k = gets.split(" ").map(&:to_i)
as = gets.split(" ").map(&:to_i)

h = {}
as.each do |a|
  h[a] ||= 0
  h[a] += 1

end
as.uniq!
as.sort!{|a,b| h[b] <=> h[a]}

puts n - as[0...k].reduce(0) {|a,e| a+=h[e]}