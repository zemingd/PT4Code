def gcd_on_blackboard(n, a)
  left_to_right = [a.first]
  right_to_left = [a.last]

  1.upto(n - 1) do |i|
    left_to_right << gcd(left_to_right.last, a[i])
    right_to_left.unshift gcd(right_to_left.first, a[n - 1 - i])
  end

  m = []
  n.times do |i|
    if i - 1 < 0
      m << right_to_left[i + 1]
    elsif i + 1 == n
      m << left_to_right[i - 1]
    else
      m << gcd(left_to_right[i - 1], right_to_left[i + 1])
    end
  end

  m.max
end

def gcd(a, b)
  a, b = b, a if a < b
  r = a % b
  until r.zero?
    a = b
    b = r
    r = a % b
  end
  b
end