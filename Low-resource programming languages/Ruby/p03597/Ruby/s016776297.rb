N = gets.chomp.to_i
R = []
N.times do
  R << gets.chomp.split(" ").map(&:to_i)
end
# p R
subtract = 0
fly_turn = []
N.times do |c|
  N.times do |t|
    next if fly_turn.include?([c,t])
    if R[c][t] > 0
      N.times do |i|
        if !(i == c or i == t)
          direct = R[c][t]
          next if fly_turn.include?([c,i]) or fly_turn.include?([i,t])
          remote = R[c][i] + R[i][t]
          if direct > remote
            puts -1
            exit
          elsif direct == remote
            R[c][t] = R[t][c] = 0
            # subtract += remote
            fly_turn.push([t,c],[c,t])
            # p [c,t,i,flg,subtract]*","
            break
          end
        end
      end
    end
  end
end
puts R.flatten.inject(:+)/2 #- subtract
