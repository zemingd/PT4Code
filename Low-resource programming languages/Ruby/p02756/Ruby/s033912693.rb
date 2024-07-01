#n,k=gets.split(' ').map(&:to_i)
#h=gets.split(' ').map(&:to_i)
#tajigen = Array.new(4) { Array.new(2,0) }
s = gets.to_s
q=gets.to_i

q.times do
  #query=gets.split(' ').map(&:to_s)
  query2=gets.delete(' ')
  query=query2.split('')
  #puts query[0]
  #puts query[1]
  #puts query[2]
  #puts "改行"

  if query[0].to_i==1
    s=s.reverse!

  else
    if query[1].to_i==2
      s << query[2]
    else
      #s=s.reverse!
      #s << query[2]
      #s=s.reverse!
      s=query[2]+s

    end
  end
end
puts s
