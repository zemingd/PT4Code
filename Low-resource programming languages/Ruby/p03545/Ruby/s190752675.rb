S=gets
(0..7).each{|s|
  t=s.to_s(2).rjust(3,"0").gsub(/1/,"+").gsub(/0/,"-")
  str="%d%s%d%s%d%s%d"%[S[0],t[0],S[1],t[1],S[2],t[2],S[3]]
  if eval(str)==7 then puts str+"=7";break end
}