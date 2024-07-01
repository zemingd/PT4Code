arr = ARGF.gets.split.map(&:to_i)

puts arr.sort.join("\s")