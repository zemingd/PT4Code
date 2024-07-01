n, k = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i)
sum = ary.uniq.count-k
a = Hash.new
ary.each do |i|
  a[i].nil? ? a[i] = 1 : a[i] += 1
end
count = 0
if sum>0
  a.min_by(sum) { |k,l| l }.each do |m|
    count+=m[1]
  end
  puts count
else
  puts 0
end