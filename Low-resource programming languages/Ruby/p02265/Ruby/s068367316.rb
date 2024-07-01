n = gets.to_i
list = []
(0...n).each { |n|
  op = gets.split(' ')
  case op[0]
  when /^insert$/; list.unshift op[1].to_i
  when /^delete$/; list.delete_at(list.find_index(op[1].to_i))
  when /^deleteFirst$/; list.shift
  when /^deleteLast$/; list.pop
  else puts "Error : not match"
  end
}
puts list.join(' ')