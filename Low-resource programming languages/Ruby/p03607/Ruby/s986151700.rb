puts STDIN.read.lines.drop(1).map(&:to_i).group_by{|e|e}.map { |_, v| v.length}.select {|e|e.odd?}.length
