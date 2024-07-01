n = gets.to_i
s = gets.chomp
max = n - 1
count = []
1.upto(max) do |i|
  c = 0
  before = s[0..(i - 1)]
  after = s[i..max].chars.uniq

  before.chars.uniq.each do |v|
    c += 1 if after.index(v)
  end
  count.push(c)
end
puts count.max
