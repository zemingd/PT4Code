n,q = gets.chomp.split.map(&:to_i)
s = gets.chomp
qs = q.times.map{gets.chomp.split.map(&:to_i)}
array = Array.new(s.size,0)
count = 0
1.upto(s.size-1) do |i|
  if s[i-1..i] == "AC"
    count += 1
    array[i] = count
  else
    array[i] = count
  end
end

qs.each do |l,r|
  puts array[r-1] - array[l-1]
end
