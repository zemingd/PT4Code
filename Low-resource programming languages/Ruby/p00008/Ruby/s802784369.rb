while n = gets.chomp.to_i
  count = 0
  10.times do |a|
    10.times do |b|
      10.times do |c|
        10.times do |d|
          if a + b + c + d == n
            #puts "#{a}, #{b}, #{c}, #{d}"
            count += 1
          end
        end
      end
    end
  end
  puts count
end