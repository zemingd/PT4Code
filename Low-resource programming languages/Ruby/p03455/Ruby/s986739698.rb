gets.split(" ").map(&:to_i).any?(&:even?) ? puts('Even') : puts('Odd')