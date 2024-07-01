gets
t,*ps=gets.split.map &:to_i
puts 1+ps.count{|e|
  e<t ? t=e : nil
}