n, m = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i)

xs.sort!

gap = (xs.size - 1).times.map { |i| xs[i + 1] - xs[i] }
skip = if gap.size > n - 1
         gap.sort[(-(n - 1))..-1].reduce { |m, i| m + i }
       else
         gap.reduce { |m, i| m + i } || 0
       end

puts(xs[-1] - xs[0] - skip)
