N, M = gets.split.map(&:to_i)
NPY = M.times.map {|i| gets.split.map(&:to_i) + [""] }
N.times{|i|
    cnt = 1
    NPY.select{ |v| v[0] == i+1 }.sort{|a, b| a[1] <=> b[1]}.each{|v| 
        v[2] = sprintf("%06d%06d", i + 1, cnt)
        cnt += 1
    }
}
NPY.each{|v| puts v[2]}
