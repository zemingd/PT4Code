n = gets.to_i
pontas = gets.chomp.chars

count_e = pontas.count('E')

costs = (1...n).each_with_object([[count_e, 0]]) { |i, result|
  result <<
      [
        pontas[i] == 'E' ? result.last.first - 1 : result.last.first,
        pontas[i - 1] == 'W' ? result.last.last + 1 : result.last.last
      ]
}

puts costs.map { |left_cost, right_cost| left_cost + right_cost }.min