n = gets.to_i
as = gets.chomp.split.map(&:to_i)
bs = gets.chomp.split.map(&:to_i)
cnt = 0
bs.each_with_index do |b,i|
  canBustered = [b,as[i]].min
  cnt += canBustered
  b -= canBustered
  canBustered = [b,as[i+1]].min
  cnt += canBustered
  as[i+1] -= canBustered
end
puts cnt