puts gets.split.first.to_i.times.map {
  ary = gets.split
  ary[1..-1]
}.inject(:&).size
