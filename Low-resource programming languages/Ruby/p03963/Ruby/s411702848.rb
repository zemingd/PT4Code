puts [gets.split.map(&:to_i)].map{|n, k| k * (k-1) ** (n-1)}
