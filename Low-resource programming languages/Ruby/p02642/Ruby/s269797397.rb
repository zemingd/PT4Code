n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)


cnt = 0
res = Array.new(n) { false }
mem = {}

[*0...n].each do |i|
  c = 0
  [*0...n].each do |j|
    next if i == j

    break if a[i] % a[j] == 0

    next if mem["#{a[i]}:#{a[j]}"]

    if a[i] % a[j] != 0
      mem["#{a[i]}:#{a[j]}"] = true
    end
    c = j
  end

  if c == n-1
    res[i] = true
  end

end

puts res.flatten.select{|x| x }.count

