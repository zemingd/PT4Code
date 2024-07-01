N,M = gets.split.map(&:to_i)
K = readlines.map {|s| s.split.map(&:to_i) }
P = K.pop

puts (1<<N).times.count {|bit|
  sw = Array.new(N) {|i| (bit>>i) & 1 }
  P.each_with_index.all? do |f,i|
    K[i][1,K[i][0]].count {|j| sw[j-1] == 1 } % 2 == f
  end
}
