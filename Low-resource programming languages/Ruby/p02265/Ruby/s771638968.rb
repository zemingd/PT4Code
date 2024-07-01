n = gets.to_i
list = []
(0...n).each { |n|
  op = gets.split(' ')
  case op[0]
  when /^insert$/; list.unshift op[1].to_i
  when /^delete$/
    idx = list.find_index(op[1].to_i)
    list.delete_at(idx) if idx != nil
  when /^deleteFirst$/; list.shift
  when /^deleteLast$/; list.pop
  else puts "Error : not match"
  end
}
puts list.join(' ')