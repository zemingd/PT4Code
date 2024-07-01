N = gets.to_i
A = gets.split.map(&:to_i)

counter = Hash.new(0)

A.each do |a|
  color = case a
          when 1..399
            0
          when 400..799
            1
          when 800..1199
            2
          when 1200..1599
            3
          when 1600..1999
            4
          when 2000..2399
            5
          when 2400..2799
            6
          when 2800..3199
            7
          else
            8
          end

  counter[color] += 1
end

colors = counter.keys.select { |x| x <= 7 }

min = [colors.size, [counter[8], 1].min].max
max = colors.size + counter[8]

puts [min, max].join(' ')
