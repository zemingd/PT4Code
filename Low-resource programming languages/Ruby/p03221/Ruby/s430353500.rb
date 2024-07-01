N, M = gets.split.map(&:to_i)
arr = []
NPY = M.times.map { |i| 
    [i] + gets.split.map(&:to_i) + [''] 
}.group_by { |v| 
    v[1] 
}.map { |k, v| 
    [k, v.sort_by { |a| a[2] }] 
}.each{|v|
    cnt = 1
    v[1].each{|u| 
        u[3] = sprintf("%06d%06d", v[0], cnt)
        cnt += 1
        arr << u
    }
}
arr.sort{|a, b| a[0] <=> b[0]}.map{|v| v[3]}.each{|v| puts v}
