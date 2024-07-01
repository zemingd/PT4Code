def hsum(num1, num2)
  num1array = num1.to_s(2).chars.map(&:to_i)
  num2array = num2.to_s(2).chars.map(&:to_i)
  keta = [num1array.count, num2array.count].max
  sum = []
  keta.times do |i|
    if ((num1array[-1 * (i+1)] || 0) + (num2array[-1 * (i+1)] || 0)) == 1
      sum << 1
    else
      sum << 0
    end
  end
  sum.reverse!.join.to_i(2)
end

n = gets.chomp.to_i
as = gets.split.map(&:to_i)
bool = "No"
if as.count % 3 == 0
  as.uniq!
  if as[1] == hsum(as[0],as[2]).to_s(10).to_i
    bool = "Yes"
  end
end
puts bool