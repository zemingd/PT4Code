dp = []
1..400.times { |i| dp << i**2 }
gets.chomp.split.map(&:to_i).tap { |a, b| puts(dp.include?("#{a}#{b}".to_i) ? 'Yes' : 'No') }
