readlines.map { |s| s.split.map(&:to_i) }
         .select {|h,w| h!=0 && w!=0}
         .each { |h,w| puts ("#"*w+"\n")*h + "\n" }