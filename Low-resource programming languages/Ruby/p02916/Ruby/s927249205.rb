def main
  gets
  as = gets.chomp.split(' ').map(&:to_i)
  bs = gets.chomp.split(' ').map(&:to_i)
  cs = gets.chomp.split(' ').map(&:to_i)

  score = 0
  pre_i = -2
  as.each do |a|
    i = a-1
    score += bs[i]
    if i - pre_i == 1
      score += cs[i-1]
    end
    pre_i = i
  end
  puts score
end

main if $0 == __FILE__
