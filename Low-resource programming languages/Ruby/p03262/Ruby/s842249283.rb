n,x = gets.split.map(&:to_i)
list = gets.split.map(&:to_i)
list_two =[]
list = list.each{|i| i = i-x
   i = -i if i < 0
   list_two << i
}

list_two.sort!

num = list_two[0]
ans = true
while num > 0
  list_two.each{|i|
if i % num != 0
  ans = false
  break
end
  }
  if ans
    puts num
    exit
  else
    ans = true
  end
  num -= 1
end
