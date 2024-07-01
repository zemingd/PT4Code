n,k=gets.split.map(&:to_i)
d=[*"0".."9"]-gets.chomp.split
z=d.size
while true
  if (n.to_s.chars|d).size==z
    puts n
    exit
  end
  n+=1
end
