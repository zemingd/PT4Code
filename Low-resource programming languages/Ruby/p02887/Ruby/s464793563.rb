n = gets.chomp!.to_i
s = gets.chomp!

#s = "aabbbbaaca"
ls = s.split("")
#p ls
i = 0
new_ls = []
def slime(ls, i)
  for i in i..ls.length-1 do
    if i == ls.length-1
      return ls
    end
    if ls[i] == ls[i+1]
      ls.delete_at(i)
      #p ls
      slime(ls, i)
    end
  end
  return ls
end


  ans = slime(ls, i)
  #p ans
  if ans.length == 1
    p 0
  else
    p ans.length
  end