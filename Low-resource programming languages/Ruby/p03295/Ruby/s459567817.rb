n,m=gets.split(" ").map(&:to_i)
pairs = []
while line=gets
  break if line.chomp.empty?
  pairs<<line.split(" ").map(&:to_i)
end

ok = []
tmp = 0
pairs.sort.each do |a, b|
  # 最西の島が最東の島よりも西にあること
  if a >= tmp
    tmp = b
    ok << [a,b]
  end
end

p ok.length