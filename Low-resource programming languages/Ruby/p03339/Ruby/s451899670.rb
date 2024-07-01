n = gets.to_i
pontas = gets.chomp.chars

count_e = pontas.count('E')

costs = (0...n).each_with_object([]) { |i, result|
  prev_right_e, prev_left_w = result.last || [count_e, 0]

  result <<
    [
      pontas[i] == 'E' ? prev_right_e - 1 : prev_right_e,
      i.zero? ? 0 : (pontas[i - 1] == 'W' ? prev_left_w + 1 : prev_left_w)
    ]
}

puts costs.map { |left_cost, right_cost| left_cost + right_cost }.min