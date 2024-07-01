def main
  x = gets.to_i

  return 1 if x == 1

  b = 2
  answers = []
  loop do
    ans_b = b * b
    break if ans_b > x

    while ans_b <= x do
      ans_b *= b
    end
    answers << ans_b / b

    b += 1
  end

  answers.max
end

puts main()