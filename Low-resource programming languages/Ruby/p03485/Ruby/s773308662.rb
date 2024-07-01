puts ($stdin.read.split.map(&:to_i).inject(:+) / 2.0).ceil
