n, m = gets.split.map(&:to_i)

if n >= m
  puts(0)
else
  xs = gets.split.map(&:to_i)

  xs.sort!

  if n == 1
    puts(xs[-1] - xs[0])
  else
    gap = (xs.size - 1).times.map { |i| xs[i + 1] - xs[i] }
    skip = gap.sort[(-(n - 1))..-1].reduce { |m, i| m + i }

    puts(xs[-1] - xs[0] - skip)
  end
end