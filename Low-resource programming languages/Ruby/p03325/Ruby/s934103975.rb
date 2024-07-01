N = gets.to_i
an = gets.split.map(&:to_i)

count = 0
loop do
  an.sort!
  an.reverse!

  all_odd = true
  last_even = true
  an = an.map do |a|
    if a % 2 == 1
      a *= 3
    else
      if last_even
        last_even = false
        all_odd = false
        a /= 2
      else
        a *= 3
      end
    end
  end

  # p an

  if all_odd
    break
  end

  count += 1
end

puts count
