n=[]
while line = gets
  hoge=line.to_s.downcase.split("")
  n.concat(hoge)
end
letter="abcdefghijklmnopqrstuvwxyz".split("")
for i in 0..25 do
 print("#{letter[i]} : #{n.count(letter[i])}\n")
end
