N = gets.chomp.to_i
R = N.times.map { gets.split.map(&:to_i) }
subtract = 0
N.times do |c|
  N.times do |t|
    if R[c][t] > 0
      N.times do |i|
        if !(i == c or i == t)
          direct = R[c][t]
          remote = R[c][i] + R[i][t]
          if direct > remote
            puts -1
            exit
          elsif direct == remote
            subtract += remote
            break
          end
        end
      end
    end
  end
end
puts ( R.flatten.inject(:+) - subtract ) / 2
