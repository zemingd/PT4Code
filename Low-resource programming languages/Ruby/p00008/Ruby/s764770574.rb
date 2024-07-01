while line = gets
  value = line.chomp
  list = value.split
  n = list[0].to_i
  count = 0

  10.times do |a|
    10.times do |b|
      10.times do |c|
        10.times do |d|
          sum = (a + b + c + d)
          if sum == n
            count += 1
          end
        end
      end
    end
  end
  puts count
end

