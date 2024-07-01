class Array
    def quick_sort
    return self if self.length <= 1
    pivot = pop
    left, right = partition { |e| e < pivot }
    push pivot
    left.quick_sort + [pivot] + right.quick_sort
  end
end

n, k = gets.chomp.split(' ').map(&:to_i)
sticks = gets.chomp.split(' ').map(&:to_i)
total = 0

sticks.quick_sort.reverse[0..(k-1)].each do |stick|
  total += stick
end
puts total