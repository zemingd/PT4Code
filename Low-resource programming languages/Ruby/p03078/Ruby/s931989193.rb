x,y,z,k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
cs = gets.split.map(&:to_i)

as.sort!.reverse!
bs.sort!.reverse!
cs.sort!.reverse!

as = as.first(12)
bs = bs.first(12)
cs = cs.first(12)

candidates = []

as.each do |a|
  bs.each do |b|
    cs.each do |c|
      candidates << a + b + c
    end
  end
end

candidates.sort!.reverse!

k.times do |i|
  puts candidates[i]
end
