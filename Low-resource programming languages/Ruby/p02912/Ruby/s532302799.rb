n,m = gets.chomp.split(" ").map{|i|i=i.to_i}
a = gets.chomp.split(" ").map{|i|i=i.to_i}


a.sort!.reverse!
#pp a


priority_queue=[]

priority_queue << a[0]/2

a.delete_at(0)

(m-1).times do|i|
  #puts "now a"
  #pp a
  #puts "now priority_queue"
  #pp priority_queue
  #puts "============"
  if a == [] then
    #puts "slakdfja;lsdkfj"
    a=priority_queue
    priority_queue = []
    priority_queue<<a[0]/2
    a.delete_at(0)
  elsif a[0] > priority_queue[0] then 
    priority_queue << a[0]/2
    a.delete_at(0)
  elsif a[0] <= priority_queue[0] then
    priority_queue << priority_queue[0]/2
    priority_queue.delete_at(0)
  end
  #puts "now a"
  #pp a
  #puts "now priority_queue"
  #pp priority_queue
  #puts "============"
end

#pp a
#pp priority_queue

# puts a.sum+priority_queue.sum
all=0
a.each do|elm|
  all += elm
end

priority_queue.each do|elm|
  all += elm
end

puts all





