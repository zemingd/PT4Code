puts Proc.new{ |ab, s| ab.split.map(&:to_i) == s.split("-").map(&:length) && s.length-1==ab.split.map(&:to_i).inject(:+) ? "Yes" : "No"}.(STDIN.read.lines.flatten)

