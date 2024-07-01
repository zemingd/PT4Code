a, b, c = gets.chomp.split(" ").map(&:to_i);
puts [(a - b).abs() + (b - c).abs(),
      (b - c).abs() + (c - a).abs(),
      (c - a).abs() + (a - b).abs()].min
