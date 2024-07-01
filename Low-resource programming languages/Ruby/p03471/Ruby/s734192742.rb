N,Y = gets.split.map(&:to_i)

puts catch {|tag|
  N.times do |i|
    N.times do |j|
      k = N - i - j
      n = i * 10000 + j * 5000 + k * 1000
      throw tag, [i, j, k].join(" ") if i+j+k == N && n == Y
    end
  end
  "-1 -1 -1"
}
