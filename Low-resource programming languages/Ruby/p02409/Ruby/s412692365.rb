memo = {}
gets.to_i.times do
  b, f, r, v = gets.split.map(&:to_i)
  memo[[b, f, r]] = 0 if memo[[b, f, r]].nil?
  memo[[b, f, r]] += v
  memo[[b, f, r]] = 0 if memo[[b, f, r]] < 0
end
[*1..4].each do |b|
  [*1..3].each do |f|
    [*1..10].each do |r|
    	v = memo[[b, f, r]].nil? ? 0 : memo[[b, f, r]]
      print " #{v}"
    end
    print "\n"
  end
  puts '#' * 20 unless b == 4
end