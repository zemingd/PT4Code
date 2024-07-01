n=gets.to_i
cnt=0
ary=[]
(1..n).each do |j|
  if j.odd?
    (1..j).each do |i|
      if j % i ==0
        cnt +=1
      end
    end
    ary<<cnt
    cnt=0
  end
end
puts ary.count(8)