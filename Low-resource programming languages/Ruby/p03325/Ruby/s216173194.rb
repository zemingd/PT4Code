n = gets.to_i
seq = gets.chomp.split(" ").map(&:to_i)

# 一番大きい偶数を2で割る？

count = 0
until seq.all?{|a| a%2 != 0}
  count += 1
  max = seq.select{|a| a % 2 == 0}.max
  seq.map! do |a|
    if a == max
      a /= 2
    else
      a *= 3
    end
  end

end

p count
