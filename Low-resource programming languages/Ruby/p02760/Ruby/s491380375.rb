
a = 3.times.map{gets.split.map(&:to_i)}
n = gets.to_i
b = n.times.map{gets.to_i}
i = 0
j =0
ans = [[0,0,0],[0,0,0],[0,0,0]]


a.each do |c|

  c.each do |d|

    if ans[i][j] == 0
      b.each do |t|
        if t == d
          ans[i][j] =1
        end
      end
    end
    j +=1
  end
  j=0
  i +=1
end



#p a


#p ans

array2 = ans.flatten

if(array2[0]+array2[3]+ array2[6]==3)
  p 'Yes'
  exit
elsif (array2[1]+array2[4]+ array2[7]==3)
  p 'Yes'
  exit
elsif(array2[2]+array2[5]+ array2[8]==3)
  p 'Yes'
  exit
elsif (array2[0]+array2[1]+ array2[2]==3)
  p 'Yes'
  exit
elsif (array2[3]+array2[4]+ array2[5]==3)
  p 'Yes'
  exit
elsif (array2[6]+array2[7]+ array2[8]==3)
  p 'Yes'
  exit
elsif (array2[0]+array2[4]+ array2[8]==3)
  p 'Yes'
  exit
elsif (array2[2]+array2[4]+ array2[6]==3)
  p 'Yes'
  exit
else
  p 'No'
end



