a = []
a = gets.split.map(&:to_i)
puts a[1]*((a[1]-1)**(a[0]-1))