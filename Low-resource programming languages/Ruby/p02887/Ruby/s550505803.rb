n = gets.chomp!.to_i
s = gets.chomp!

#s = "aabbbbaaca"
ls = s.split("")
p ls
i = 0
def slime(ls, i)
  for i in i..ls.length-1 do
    if ls[i] == ls[i+1]
      ls.delete_at(i)
      slime(ls, i)
    end
  end
  return ls
end

p slime(ls, i).length