n = gets.to_i
cs = gets.split("")

newls = [cs[0]]

while not(cs.empty?) do
if newls[0] == cs[0] then
    cs=cs.drop(1)
  else
    newls.unshift(cs[0])
  cs=cs.drop(1)
  end
end
puts newls.length