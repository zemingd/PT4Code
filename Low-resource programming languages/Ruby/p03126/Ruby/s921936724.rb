n,m = gets.chomp.split.map(&:to_i)
arr = []
n.times.map {arr << gets.split.map(&:to_i)}
counter = 0

arr_all = []
arr.each do |v|
   v[1..v[0].to_i].each do |v2|
    arr_all << v2
   end
end

(1..m).to_a.each do |v|
  if arr_all.count(v) == n
    counter += 1
  end
end

p counter
