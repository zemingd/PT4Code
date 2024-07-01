n, q = gets.chomp.split(/\s/).map(&:to_i)

t = []

(n - 1).times do 
  a, b = gets.chomp.split(/\s/).map(&:to_i).sort
  t[a] ||= {counter: 0, leaf: []}
  t[b] ||= {counter: 0, leaf: []}
  t[a][:leaf].push t[b]
end

def add(node, x)
  node[:counter] += x
  node[:leaf].each {|l| add(l,x)}
end

c = []

q.times do
  p1, x = gets.chomp.split(/\s/).map(&:to_i)
  c[p1] ||= 0
  c[p1] += x
end

(1..n).each {|i| add(t[i], c[i]) if c[i]}

puts t[1..-1].map {|l| l[:counter].to_s}.join(" ")