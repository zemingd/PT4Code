
n=gets.chomp.to_i
array=gets.split.map(&:to_i)
start_time = Time.now
counts = 0
array.select!{|e| e % 2 == 0}
array = array.sort.reverse
n=array.count

while array.any?{ |e| e.even? } do
  array.map! { |e| e*3  }
  array[0] = array[0]/6
  if array[0].odd?
    array.delete_at(0)
    n -= 1
    array = array.sort.reverse
  end
  counts += 1
end
puts counts
