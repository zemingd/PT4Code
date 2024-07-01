N, K = gets.split.map(&:to_i)
ABS = readlines.map { |line| line.split.map(&:to_i) }.sort_by! { |a, b| a }
k = K
ABS.each do |a, b|
  k -= b
  if k <= 0
    p a
    exit
  end
end