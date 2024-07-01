H, N = gets.split(' ').map(&:to_i)
puts gets.split(' ').map(&:to_i).inject(:+) >= H ? 'Yes' : 'No'