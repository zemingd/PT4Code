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
if as.uniq.count == 1 && as.uniq[0] == hsum(as.uniq[0],as.uniq[0]).to_s(10).to_i
  bool = "Yes"
elsif n % 3 == 0
  asuniq = as.uniq
  if asuniq.count == 2
    if asuniq[0] == hsum(asuniq[1],asuniq[1]).to_s(10).to_i
      if as.count[asuniq[0]] * 2 == as.count(asuniq[1])
        bool = "Yes"
      end
    end
    if asuniq[1] == hsum(asuniq[0],asuniq[0]).to_s(10).to_i
      if as.count[asuniq[1]] * 2 == as.count(asuniq[0])
        bool = "Yes"
      end
    end
  end
  if asuniq.count == 3
    if asuniq[1] == hsum(asuniq[0],asuniq[2]).to_s(10).to_i
      if as.count(asuniq[1]) == as.count(asuniq[0]) && as.count(asuniq[1]) == as.count(asuniq[2])
        bool = "Yes"
      end
    end
  end
end
puts bool