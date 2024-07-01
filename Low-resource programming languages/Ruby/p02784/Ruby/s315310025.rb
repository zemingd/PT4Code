H,N = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).inject(:+)
puts H <= A ? 'Yes' : 'No'