puts Proc.new{ |ab, s| a,b=ab.split.map(&:to_i);s.match(/\d{#{a}}-\d{#{b}}/) ? "Yes" : "No"}.(STDIN.read.lines.flatten)

