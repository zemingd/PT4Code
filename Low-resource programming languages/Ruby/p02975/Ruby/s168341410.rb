n = gets.chop.to_i - 1
a = gets.chop.split.map(&:to_i)

x = 'Yes'

a.size.times do |i|
  before = a[i.zero? ? n : i - 1].to_s(2)
  after = a[i == n ? 0 : i + 1].to_s(2)
  x = 'No' unless (before.to_i ^ after.to_i).to_s.to_i(2) == a[i]
end

puts x
