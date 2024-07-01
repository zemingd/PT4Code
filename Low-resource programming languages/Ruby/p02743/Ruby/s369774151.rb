def sqrt(a)
  begv = 1
  endv = a
  while endv > begv + 1
     mid = (endv + begv)/2
     if mid ** 2 <= a
        begv = mid
     else
        endv = mid
     end
  end
  return begv
end

a, b, c = gets.split.map(&:to_i)
(sqrt(a) + sqrt(b)) < sqrt(c) ? puts("Yes") : puts("No")
