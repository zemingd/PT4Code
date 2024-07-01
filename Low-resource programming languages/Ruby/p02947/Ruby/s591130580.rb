def signature(word)
  word.chars.sort.join.intern
end

def factorial(number)
  (1..number).inject(1,:*)
end

n = gets.chomp.to_i

strs = (1..n).map{ gets.chomp }

sigs = strs.map { |word| signature word }

graph = {}
sigs.each do |sig|
  graph[sig] = 0 if graph[sig].nil?
  graph[sig] += 1
end

res = 0
graph.each do |g|
  res += (factorial g[1]) / 2
end

puts res
