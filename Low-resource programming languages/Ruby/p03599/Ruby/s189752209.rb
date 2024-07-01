A, B, C, D, E, F = gets.chomp.split.map(&:to_i)

ans = -1
ret = []

0.upto(F/100) do |a|
  0.upto(F/100) do |b|
    water = a * A + b * B
    w = water * 100
    next if w > F
    sugar = water * E

    0.upto(F/C) do |c|
      0.upto(F/D) do |d|
        s = c * C + d * D

        if s <= sugar
          next if (w + s).zero?

          if ans < (100 * s) / (w + s).to_f
            ans = (100 * s) / (w + s).to_f
            ret = [w + s, s]
          end
        end
      end
    end
  end
end

puts ret.join(' ')
