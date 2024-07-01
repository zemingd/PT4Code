n,x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a.sort!
def bs (a, n, x)
  head = 0
  tail = n
  while head <= tail
    center = (head + tail) / 2

    if a[0..center].sum == x
      return center + 1
    elsif a[0..center].sum < x
      head = center + 1
    else
      tail = center - 1
    end
  end

  return [center - 1, 0].max
end

puts bs(a, n, x)

