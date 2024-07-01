n = gets.to_i / 2
v = gets.split.map(&:to_i)

ans = 0
h1 = Hash.new(0)
n.times{|i| h1[v[2 * i]] += 1}
h1 = h1.sort{|a,b| -a[1] <=> -b[1]} + [[-1, 0]]

h2 = Hash.new(0)
n.times{|i| h2[v[2 * i + 1]] += 1}
h2 = h2.sort{|a,b| -a[1] <=> -b[1]} + [[-1, 0]]

if h1[0][0] == h2[0][0]
    puts 2 * n - [h1[0][1] + h2[1][1], h1[1][1] + h2[0][1]].min
else
    puts 2 * n - h1[0][1] - h2[0][1]
end