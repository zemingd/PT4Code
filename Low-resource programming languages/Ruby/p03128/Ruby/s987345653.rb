cost_map = {
  1 => 2,
  2 => 5,
  3 => 5,
  4 => 4,
  5 => 5,
  6 => 6,
  7 => 3,
  8 => 7,
  9 => 6
}

n, m = gets.split(" ").map {|s| s.to_i}
available_numbers = gets.split(" ").map {|s| s.to_i}

# 候補となる数字を抽出(コスパの悪い数字は最初から候補に入れないようにする & 候補は素数になるはず)
use_numbers = []
costs_per_use_number = []
available_numbers.sort.reverse.each { |number|
  cost_per_number = cost_map[number]

  if costs_per_use_number.all? { |cost_per_use_number| cost_per_number % cost_per_use_number != 0} then
    use_numbers.push(number)
    costs_per_use_number.push(cost_per_number)
  end
}

# 桁数が最大となる組み合わせを見つける
max_permutations = [[]] # 棒が0本の時は空
(1..n).each { |stick_number|
  use_numbers.each { |number|
    cost_per_number = cost_map[number]
    stick_number_before = stick_number - cost_per_number

    if stick_number_before >= 0 then
      max_permutation_before = max_permutations[stick_number_before]

      unless max_permutation_before.nil? then
        permutation = max_permutation_before.clone.push(number).sort.reverse
        max_permutation = max_permutations[stick_number]
        if max_permutation.nil? then
          max_permutations[stick_number] = permutation
        elsif (permutation.size > max_permutation.size) || ((permutation.size == max_permutation.size) && ((permutation <=> max_permutation) == 1)) then
          max_permutations[stick_number] = permutation
        end
      end
    end
  }
}
puts(max_permutations[n].join)