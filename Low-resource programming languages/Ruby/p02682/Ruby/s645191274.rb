A, B, C, K = ARGF.gets.chomp.split.collect {|el| el.to_i}

max = if K <= A
        K
      elsif K <= (A + B)
        A
      else
        A - (K - (A + B))
      end

puts max
