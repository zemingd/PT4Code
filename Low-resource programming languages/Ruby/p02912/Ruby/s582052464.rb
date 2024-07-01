count,ticket=gets.split.map(&:to_i)
info=gets.split.map(&:to_i).sort!
count-=1
ticket.times{
  info[count]=info[count]/2.floor
  info=info.sort!
  }
p info.inject(:+)