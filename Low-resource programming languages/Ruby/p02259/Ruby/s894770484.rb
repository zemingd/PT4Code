# バブルソート

def bubbleSort(array)
  sorted = false
  i = 0
  count = 0
  until sorted
    sorted = true
    (array.length - 1).step(i + 1, -1).each do |j|
      print "i: #{i}, j: #{j}, array: " if $debug
      p array if $debug
      if array[j] < array[j-1]
        smaller, larger = array[j], array[j-1]
        array[j-1], array[j] = smaller, larger
        count += 1
        sorted = false
      end
    end
    i += 1
  end
  [count, array]
end

$debug = false
_n = gets.to_i
array = gets.split.map(&:to_i)
count, array = bubbleSort(array)
puts array.join(" ")
puts count

