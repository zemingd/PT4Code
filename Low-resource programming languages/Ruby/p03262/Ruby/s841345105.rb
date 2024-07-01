lines = $stdin.read
array = lines.split("\n")
N,X = array[0].split(" ").map(&:to_i)
x = [X].concat(array[1].split(" ").map(&:to_i)).sort

#INF = 10**9+1
diff = []
x.each_cons(2) do |next_to|
  diff << next_to.last - next_to.first
end

diff = diff.uniq.sort
small = diff.first

if diff.all?{|n| n%small == 0}
  puts small
else
  puts 1
end