while (n = gets.chomp) != ""
    break if n.to_i > 50
    count = 0
    10.times do |a|
      10.times do |b|
        10.times do |c|
          10.times do |d|
            count += 1 if (a + b + c + d) == n.to_i
          end
        end
      end
    end
    puts count
  end