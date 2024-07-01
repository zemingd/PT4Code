def my_bsearch (array,target)
  head=0
  tail=array.length-1
  while head<=tail
    center=(tail+head)/2
    if array[center][0] == target
      return center
    elsif array[center][0] < target
      head = center + 1
    else
      tail = center - 1
    end
  end
  #puts "now head=#{head}, tail=#{tail}\narr[#{head}]=#{array[head]}, arr[#{tail}]=#{array[tail]}, target=#{target}"
  if tail==-1 
    return 0
  elsif head==array.length 
    return array.length
  end
  if array[tail][0]<=target
    return tail+1
  else 
    return head-1
  end
end


n = gets.chomp.to_i
a = gets.chomp.split(" ").map{|i|i = i.to_i}
arr = []
now_pos = 0
head=0
tail=0
a.each_with_index{|elm,i|
  #puts "#{elm}, #{i}"
  if arr == [] 
    arr<<[elm,i]
  elsif arr.length==1
    if arr[0][0] <=elm
      arr<<[elm,i]
    else
      arr.insert(0,[elm,i])
    end
  else
    # 挿入箇所にぶたん
    arr.insert(my_bsearch(arr,elm),[elm,i])
  end
  #puts "now arr = #{arr}"
}
#pp arr
b=[]
arr.each{|elm|
  b<<elm[1]+1
}
puts b.join(" ")