n = gets.to_i
s = gets.to_s
A= s.split(" ")

def bubbleSort( n , array)
   swap_cnt = 0
   flag = 1
   i = 0
   while flag == 1
	  flag = 0

	  ((i + 1)..(n - 1)).to_a.reverse_each { |j|
   	 if array[j] < array[j - 1]
			# swap
			tmp = array[j - 1]
			array[j - 1] = array[j]
			array[j] = tmp

			swap_cnt += 1
			flag  = 1
		 end
	  }
	  i += 1
   end

   puts array.join(' ')
   puts swap_cnt
end

bubbleSort(n , A)
