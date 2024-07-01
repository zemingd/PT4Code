n=gets.to_i
a=Array.new
n.times{
  com=gets.split(' ').map(&:to_s)
  case com[0]
  when 'insert'
     a.push(com[1])
  when 'delete'
     i=a.rindex(com[1])
     a.delete_at(i)
  when 'deleteFirst'
     if a.length>0 then
     a.delete_at(a.length-1)
     end
  when 'deleteLast'
     if a.length>0 then
     a.delete_at(0)
     end
  end
}
r=a.reverse.join(' ')
printf("%s\n", r)