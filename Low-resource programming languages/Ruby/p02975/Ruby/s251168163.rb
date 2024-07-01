n = gets.chop.to_i - 1
a = gets.chop.split.map(&:to_i)

x = 'Yes'

a.combination(n + 1).each do |array|
  (n + 1).times do |i|
    before = array[i.zero? ? n : i - 1].to_s(2)
    after = array[i == n ? 0 : i + 1].to_s(2)
    unless (before.to_i ^ after.to_i).to_s == array[i].to_s(2)
      x = 'No'
      break
    end
  end
end

puts x
