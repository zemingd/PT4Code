IN = readlines.map(&:chomp)
FIRST = IN[0].chomp.split(" ").map(&:to_i)

N = FIRST[0]
M = FIRST[1]

A = IN[1].chomp.split(" ").map(&:to_i)

ans = []
A.each do |v|
  if v > (A.inject(:+) / (4 * M)).to_f
    ans.push(v)
  end
end

if ans.size >= M
  print "Yes"
else
  print "No"
end