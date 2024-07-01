X,N=gets.split.map(&:to_i)
P=gets.split.map(&:to_i)
0.upto(101) do |i|
  [X-i, X+i].each do |x|
    next if P.include? x
    p x
    exit(0)
  end
end
exit(1)