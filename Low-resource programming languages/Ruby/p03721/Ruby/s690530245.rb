N, K = gets.chomp.split.map(&:to_i)
ab = readlines.map{|line| line.chomp.split.map(&:to_i)}.sort_by{|a| a[0]}
index = 0

N.times{|i|
    index += ab[i][1]
    if index >= K then
        p ab[i][0]
        break
    end
}