tmp = []
cou = "1"
while cou != [0, 0]
  i = gets.chomp.split.map(&:to_i)
  tmp.push(i)
  tmp.flatten!
  cou = i
end

tmp.delete(tmp[-1])
length = tmp.length/2

i = 0
length.times do
  h = tmp[i].to_i
  w = tmp[i+1].to_i
  h.times do
    w.times do
      print "#"
    end
  end
  i = i + 2
    print"\n"
end