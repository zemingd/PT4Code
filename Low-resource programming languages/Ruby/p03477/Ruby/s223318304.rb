num, min, max= gets.chomp.split.map(&:to_i)
sum_target = []
1.upto(num) do |int|
  sum = int.to_s.split("").map(&:to_i).inject(0) {|num, int| num += int}
  sum_target << int if min <= sum && sum <= max
end
puts sum_target.inject(0) {|num, int| num += int}