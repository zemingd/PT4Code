s = gets.chomp
q=gets.to_i
front=Array.new()
behind=Array.new()
front2=Array.new(10)
front2[0]="a"
count=0
for i in 1..q
  query2=gets.to_s
  query=query2.split(' ').map(&:to_s)
  #query2=gets.delete(' ')
  #query=query2.split('')
  #puts query[0]
  #puts query[1]

  #puts "改行"

  if query[0].to_i==1
    count+=1
    #puts "通過"
  else
    if (count+query[1].to_i-1)%2==0
      front.push(query[2])

    else
      behind.push(query[2])

    end
  end
end
s=front.reverse!.join+s+behind.reverse!.join
#puts s
if count%2==1
  s.reverse!
end
#p front
#p behind
puts s
