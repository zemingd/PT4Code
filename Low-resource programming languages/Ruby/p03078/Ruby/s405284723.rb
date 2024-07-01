x,y,z,k = gets.split.map(&:to_i)
X,Y,Z = 3.times.map{ gets.split.map(&:to_i).sort.reverse }
ANS = []

(1 .. x).each do |a|
  (1 .. y).each do |b|
    break if a * b > k
    (1 .. z).each do |c|
      break if a * b * c > k
      ANS << X[a-1] + Y[b-1] + Z[c-1]
    end
  end
end

puts ANS.sort.reverse.shift(k)