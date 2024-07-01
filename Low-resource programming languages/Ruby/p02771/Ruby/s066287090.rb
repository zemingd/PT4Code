puts gets.split.map(&:to_i).sort.uniq.count == 2 ? "Yes" : "No"
