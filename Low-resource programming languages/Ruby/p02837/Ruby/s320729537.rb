io.gets.to_i
$testimony = Array.new(n){[]}
n.times do |i|
  io.gets.to_i.times do
    x, y = io.gets.split.map(&:to_i)
    $testimony[i] << [x.pred, y == 1]
  end
end
def unkind?(bits)  #bits:bit pattern,  true(y==1)の人に対する証言のみ不一致を確認
  bits.flat_map.with_index do |bit, i|
    bit ? $testimony[i] : []
  end.any?{|x, y| bits[x] != y}
end
cnt=[true, false].repeated_permutation(n).map do |bits|
  unkind?(bits) ? 0 : bits.count(true)
end
puts cnt.max