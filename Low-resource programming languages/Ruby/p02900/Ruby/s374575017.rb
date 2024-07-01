A, B = gets.split.map(&:to_i)

# common = [1]
ans = 1

a = A
b = B
(2..Math.sqrt(10**12)).each do |i|
  a_flag = false
  b_flag = false
  if a != 0
    while (a % i == 0)
      a_flag = true
      a /= i
    end
  end

  if b != 0
    while (b % i == 0)
      b_flag = true
      b /= i
    end
  end

  if a_flag && b_flag
    # common << i
    ans += 1
  end
end

# p common

p ans
