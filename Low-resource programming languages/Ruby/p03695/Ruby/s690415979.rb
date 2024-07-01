N = gets.to_i
a = gets.split.map(&:to_i)
 
rates = [0,0,0,0, 0,0,0,0]
any = 0
 
a.map{|r|
  if r<3200 then
    rates[r/400] += 1
  else
    any += 1
  end
}
 
col = rates.select{|rc| rc>0}.size
 
puts [col, 1].max.to_s + " " + (col+any).to_s