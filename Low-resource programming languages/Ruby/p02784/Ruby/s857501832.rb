h, n = gets.split.map(&:to_i)
lists = gets.split.map(&:to_i)
puts h > lists.inject(:+) ? 'No' : 'Yes'
