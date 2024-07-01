# frozen_string_literal: true
(a, b, c) = gets.split(" ").map(&:to_i)
ab = 4 * a * b
tmp = (c - a - b) * (c - a - b)
ans = ""
if (ab < tmp)
    ans = "Yes"
else
    ans = "No"
end
puts(ans)
