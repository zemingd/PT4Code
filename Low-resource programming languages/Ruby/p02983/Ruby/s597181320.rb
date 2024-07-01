l, r = gets.split.map(&:to_i)

ans = 2018
j_divided_zero = false

l.upto(r - 1) do |i|
  if j_divided_zero || i % 2019 == 0
    ans = 0
    break
  end

  break if j_divided_zero == true

  (i + 1).upto(r) do |j|
    if j % 2019 == 0
      j_divided_zero = true
      break
    end

    p = i % 2019 * j % 2019
    ans = p if p <= ans
  end
end

puts ans
