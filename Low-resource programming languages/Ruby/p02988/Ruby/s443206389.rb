
class Object
	def is_true?
		self === true
	end
end

def main(one, two)
	p arr = two.split.map(&:to_i)
	tes = arr.map.with_index do |v, index|
		next false if index - 1 < 0
		next false if arr.size <= index + 1
		next false if v < arr[index - 1] and v < arr[index + 1]
		next false if v > arr[index - 1] and v > arr[index + 1]
		true
	end

	puts tes.count(&:is_true?)
end

main(gets.strip, gets.strip)
