a, b, c, d = gets.chomp.chars.map(&:to_i)

[a, b, c, d].permutation(4).each do |nums|
  ['+', '-'].repeated_permutation(3).each do |opes|
    expr = nums.zip(opes).join
    val = eval(expr)

    if val == 7
      puts expr + "=7"
      exit
    end
  end
end
