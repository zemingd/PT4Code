N, M = gets.split.map(&:to_i)
ABs = readlines.map{|l| l.split.map(&:to_i)}

as, bs = ABs.transpose
bs = bs.uniq.sort
ct = 1
b = bs.shift
as.sort.each do |a|
  if a >= b
    ct += 1
    b = bs.shift
  end
end
puts ct