puts Proc.new { |a, b| a == b.reverse ? "YES" : "NO" }.call(STDIN.read.lines.map(&:chomp))
