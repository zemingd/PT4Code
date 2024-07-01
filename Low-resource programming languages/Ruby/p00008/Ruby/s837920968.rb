while gets do
  sum = $_.to_i
  count = 0
  0.upto(9).each do |a|
    break if a > sum
    0.upto(9).each do |b|
      break if (a + b) > sum
      0.upto(9).each do |c|
        break if (a + b + c) > sum
        0.upto(9).each do |d|
          if (a + b + c + d) == sum
            count += 1
          elsif (a + b + c + d) > sum
            break
          end
        end
      end
    end
  end
  puts count
end