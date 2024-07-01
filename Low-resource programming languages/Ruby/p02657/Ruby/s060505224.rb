_n, s = gets.chomp.split(" ").map(&:to_i)
as = gets.chomp.split(" ").map(&:to_i)

ans = {}
count = 0
(1.._n).each do |n|
  as.combination(n).each do |target|
    (1..target.size).each do |m|
      target.combination(m).each do |_target|
        if ans[_target] || s == _target.sum
          ans[_target] = true
          count += 1
        end
      end
    end
  end
end

puts count
