n=gets.chomp.to_i
array=gets.split.map(&:to_i)
counts = 0
array.select!{|e| e % 2 == 0}
n=array.count
k=0
while array.any?{ |e| e.even? } do
  while k < n do
    while array[k].even? do
      array[k] = array[k] / 2
      counts += 1
    end
    k += 1
  end
end
puts counts
