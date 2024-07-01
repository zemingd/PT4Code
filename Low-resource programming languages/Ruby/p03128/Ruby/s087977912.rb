N, M = gets.split.map(&:to_i)
COSTS = [0,2,5,5,4,5,6,3,7,6]
A = gets.split.map(&:to_i).sort_by {|a| COSTS[a]}

MIN = COSTS[A.first]
max_digit = N / MIN

num = 0
match = N
max_digit.times do |d|
  max_n = 0
  A.each do |a|
    remaining = match - COSTS[a]

    if remaining < 0
      next
    end

    if d == max_digit - 1
      if remaining == 0
        if max_n < a
          max_n = a
        end
      end
    else
      if (remaining / MIN) + (d + 1) == max_digit
        if max_n < a
          max_n = a
        end
      end
    end
  end
  if max_n == 0
    raise
  end

  num = num * 10 + max_n
  match -= COSTS[max_n]
end

p num
