gets;
puts gets(p).split.map(&:to_i).inject(:lcm)