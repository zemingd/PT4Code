puts `dd`.split.map(&:to_i).uniq.size == 2 ? "Yes" : "No"