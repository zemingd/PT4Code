N = gets.to_i

cnt = Hash.new { 0 }

finish = false

1.upto(N) do |x|
  x.upto(N) do |y|
    y.upto(N) do |z|
      num = x**2 + y**2 + z**2 + x*y + y*z + z*x

      if num > 10000
        finish = true
        break
      end
      case
      when x == y && y == z then cnt[num] += 1
      when x == y || y == z then cnt[num] += 3
      when x < y && y < z   then cnt[num] += 6
      end
    end

    break if finish
  end
  break if finish
end

1.upto(N) do |i|
  puts cnt[i]
end

