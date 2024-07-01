class Array
	def bubble_sort!(n)
		flag = true
		a = self
		while flag
			flag = false
			(1..n-1).reverse_each{|j|
				if a[j] < a[j-1]
					a[j], a[j-1] = a[j-1], a[j]
					flag = true
					yield if block_given?
				end
			}
		end
		self
	end
end

n = gets.to_i
a = gets.split.map(&:to_i)
cnt = 0
puts a.bubble_sort!(n){cnt+=1}*" "
puts cnt