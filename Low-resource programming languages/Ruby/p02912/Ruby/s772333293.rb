N, M = gets.split(" ").map(&:to_i)
A = gets.split(" ").map(&:to_i)

class Array
    def quick_sort
        return self if self.size < 2
        pivot = pop
        smallers, biggers = partition{|num| num < pivot}
        push pivot
        biggers.quick_sort + [pivot] + smallers.quick_sort
    end
end

A = A.quick_sort
M.times do
    A[0] /= 2
    A = A.quick_sort
end
puts A.inject(:+)

