input = gets.chomp.split("")
last = input[0]
len = 1
arr = []
(input.length).times{|t|
if input[t+1] == last then
  len +=1
else
  arr.push(len)
  len = 1
  last = input[t+1]
end
}
kotae = Array.new(10000,0)
arr.length.times{|t|
  if t%2 == 0 then
    #Rのとき
    if arr[t]%2 == 0 then
      kotae[t]= (kotae[t] + (arr[t]/2))
      kotae[t+1]=(kotae[t+1] + (arr[t]/2))
    else
      kotae[t]= (kotae[t] + (arr[t]/2) +1)
      kotae[t+1]=(kotae[t+1] + (arr[t]/2))
    end
  else
    #Lのとき
    if arr[t]%2 == 0 then
      kotae[t] = (kotae[t]+(arr[t]/2))
      kotae[t-1]= (kotae[t-1]+(arr[t]/2))
    else
      kotae[t-1]=(kotae[t-1]+(arr[t]/2))
      kotae[t]=(kotae[t]+(arr[t]/2) + 1)
    end
  end
}
i = 0
arr.each_with_index{|item, t|
  (item-1).times{
    print "0 "
  }
  if t%2==0 then
  print kotae[i]," ",kotae[i+1]," "
  i +=2
  end
}