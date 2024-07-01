N,M =gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
A.sort.reverse[M-1] >= A.inject(0, :+) / (4 * M) ? puts('Yes') : puts('No')
