n = STDIN.gets.to_i

min_digits = n
1.upto(Math.sqrt(n).to_i) do |a|
  if n % a == 0
    b = n / a

    a_digits = 0
    while (a > 0)
      a /= 10
      a_digits += 1
    end
    b_digits = 0
    while (b > 0)
      b /= 10
      b_digits += 1
    end

    bigger_digits = a_digits < b_digits ? b_digits : a_digits

    if bigger_digits < min_digits
      min_digits = bigger_digits
    end
  end
end

puts min_digits
