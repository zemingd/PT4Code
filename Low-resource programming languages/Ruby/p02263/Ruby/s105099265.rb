a=gets.split
sta=[]
while a.first do
  case a.first
  when "+"
    sta.push(sta.pop.to_i+sta.pop.to_i)
  when "-"
    sta.push(-1*sta.pop.to_i+sta.pop.to_i)
  when "*"
    sta.push(sta.pop.to_i*sta.pop.to_i)
  when "/"
    sta.push(sta.pop.to_i/sta.pop.to_i)
  else
    sta.push(a.first.to_i)
  end
  a.delete_at(0)
end
puts sta.pop

