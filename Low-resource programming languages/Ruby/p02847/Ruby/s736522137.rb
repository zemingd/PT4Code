# p "SUN,MON,TUE,WED,THU,FRI,SAT".tr(",", " ")
w = %w(SUN MON TUE WED THU FRI SAT)
s = gets.to_s.chomp
p 7 - w.index(s)