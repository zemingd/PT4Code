puts gets(nil).split("\n")[0..-2].map {|e| e.split(//).map(&:to_i).inject(:+) }