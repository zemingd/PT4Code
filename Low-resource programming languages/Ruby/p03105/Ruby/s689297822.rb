def read_i
  gets.chomp.split(' ').map(&:to_i)
end

a,b,c = read_i
div = b/a
puts div > c ? c : div