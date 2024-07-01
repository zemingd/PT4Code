as=gets.split.map(&:to_i)
as.sort!
p as[2] - as[0]