n=gets.to_i
arr=Array.new()
n.times do
  com,num=gets.split
  case com
  when "insert"
    arr.unshift(num.to_i) 
  when "delete"
    index=arr.find_index{ |i| i==num.to_i}
    arr.delete_at(index) unless index.nil?
  when "deleteFirst"
    arr.shift
  when "deleteLast"
    arr.pop
  end
end
puts arr.join(' ')