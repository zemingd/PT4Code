N,M=gets.split.map &:to_i
S=M.times.map{|i|gets.split.map(&:to_i)[1..-1]}
P=gets.split.map(&:to_i)

p (2**N).times.map.inject(0){|res, b|
  p=Array.new(M){0}
  M.times do |i|
    S[i].each do |s|
      p[i] ^= 1 unless b[s-1].zero?
    end
  end
  res + (p==P ? 1 : 0)
}