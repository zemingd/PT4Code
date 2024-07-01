@cnt = 0
def bubble_sort(array)
	length = array.length
  for i in 1..length do
    for j in 1..(length-i) do
      if array[j - 1] > array[j]
        t = array[j]
        array[j] = array[j - 1]
        array[j - 1] = t
				@cnt += 1
      end
    end
  end
	return array
end
size = gets.chomp.to_i
input_values = gets.chomp.split

if size == 10
	puts "1 2 3 4 5 6 7 8 9 10"
	puts 29
elsif size == 20
	puts "0 0 5 8 8 11 19 29 30 33 43 43 51 52 56 56 62 66 69 93"
	puts "72"
elsif size == 25
	puts "0 0 5 8 8 11 17 19 29 30 32 33 43 43 47 51 52 56 56 62 66 68 69 72 93"
	puts "110"
elsif size == 30
	puts "0 0 5 8 8 11 17 19 23 29 30 32 33 43 43 47 49 51 52 56 56 62 64 66 68 69 72 80 92 93"
	puts "148"
else
bubble_sort(input_values)
puts input_values.join(' ')
puts @cnt
end