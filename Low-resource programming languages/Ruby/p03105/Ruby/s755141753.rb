cost, money, hope = gets.split(' ').map(&:to_i)
result = [money/cost, hope].min
puts result