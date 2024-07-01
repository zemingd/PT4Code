def get_max_expo(x)
  b = Math.sqrt(x).floor
  ans = 1

  while b > 1
    num = b*b

    while num <= x
      num *= b
    end

    num /= b
    ans = num if ans < num
    b -= 1
  end

  ans
end

x = gets.chomp.to_i
puts get_max_expo(x)
