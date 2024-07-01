n=gets.chomp.to_i
array=gets.split.map(&:to_i)
counts = 0
array.select!{|e| e % 2 == 0}
array = array.sort.reverse
n=array.count

while array.any?{ |e| e.even? } do
  array.map! { |e| e*3  }
  array[0] = array[0]/6
  array.select!{|e| e % 2 == 0}
  array = array.sort.reverse
  counts += 1
  puts array.to_s
end
puts counts
