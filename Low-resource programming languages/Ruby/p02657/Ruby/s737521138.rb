puts gets.split.map!(&:to_i).then { |a, b| a * b }
