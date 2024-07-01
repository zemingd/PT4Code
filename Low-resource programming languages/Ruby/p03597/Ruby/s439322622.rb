puts Proc.new{ |n, a| n*n-a}.call(STDIN.read.lines.map(&:to_i))
