s.split.map(&:to_i)
puts ([A, C].min .. [B, D].max).count{|s| (A ... B) === s && (C ... D) === s}