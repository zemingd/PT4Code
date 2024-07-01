count,ticket=gets.split.map(&:to_i)
info=gets.split.map(&:to_i).sort.reverse
ticket.times{
  info[0]=info[0]/2.floor
  info=info.sort.reverse
  }
p info.inject(:+)
