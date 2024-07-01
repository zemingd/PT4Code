money = 100000
gets.to_i.times{
money =  (money*1.05/1000).ceil*1000
}
puts money