lines = $stdin.read
array = lines.split("\n")
N,X = array[0].split(" ").map(&:to_i)
x = [X].concat(array[1].split(" ").map(&:to_i)).sort

INF = 10**9+1
ans = INF
x.each_cons(2) do |next_to|
  diff = next_to.last - next_to.first
  ans = [ans, diff].min
end

puts ans