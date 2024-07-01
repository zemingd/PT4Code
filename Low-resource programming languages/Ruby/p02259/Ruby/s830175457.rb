def bubbleSort(a,n)
	$count = 0
	flag = true
	while flag
		flag = false
		(n-1).downto(1){|i|
			if a[i]<a[i-1]
				$count += 1
				tmp=a[i];a[i]=a[i-1];a[i-1]=tmp
				flag = true
			end
		}
	end

end


n = gets.to_i
a=gets.split.collect{|f|f.to_i}

bubbleSort a,n
puts a*' '
puts $count