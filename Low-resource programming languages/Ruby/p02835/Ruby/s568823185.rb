puts gets.split.map(&:to_i).reduce(:+) < 22 ? "win" : "bust"
