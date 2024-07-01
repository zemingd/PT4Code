a=gets.split(" ").map{|i| i.to_i}
cnt=0
for i in a[0]..a[1]
    cnt+=1 if a[2]%i==0
end
puts"#{cnt}"

