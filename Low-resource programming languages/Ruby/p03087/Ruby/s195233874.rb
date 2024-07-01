n,q = gets.chomp.split.map(&:to_i)
s = gets.chomp
qs = q.times.map{gets.chomp.split.map(&:to_i)}
qs.each do |l,r|
  _s = s.slice(l-1..r-1)
  count = 0
  0.upto(_s.size-2) do |i|
    if _s[i..i+1] == "AC"
      count += 1
    end
  end
  puts count
end
