gets
puts gets.split.map(&:to_i).all? {|x| x % 2 != 0 || x % 3 == 0 || x % 5 == 0 } ? 'APPROVED' : 'DENIED'
