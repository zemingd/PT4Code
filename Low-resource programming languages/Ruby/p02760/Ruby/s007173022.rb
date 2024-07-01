A = 3.times.map{gets.split.map(&:to_i)}
N = gets.to_i
gets.to_i.times do
  b = gets.to_i
  3.times do |i|
    3.times do |j|
      if A[i][j] == b
        A[i][j] == 0
      end
    end
  end
end