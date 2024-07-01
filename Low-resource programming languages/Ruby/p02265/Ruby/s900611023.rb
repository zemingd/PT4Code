MODE = "stdio"
#require 'matrix'
#include Math
line = Array.new

if(defined? MODE)
  line = STDIN.read.split("\n")
else
  tmp = '9
  insert 5
  insert 2
  insert 3
  insert 1
  delete 3
  insert 6
  delete 5
  deleteFirst
  deleteLast'.split("\n")
  tmp.each{|s|
    line << s.strip
  }
end

n = line[0].to_i

cmd=[]
cmd_arr=[]
  
(1..n).each do |k|    
  cmd = line[k].split(" ")
  cmd[1] = cmd[1].to_i
  cmd_arr << cmd
end


ret_arr = []
cmd_arr.each do |cmd, key|
    case cmd
    when "insert"
        ret_arr.unshift(key)
    when "delete"
        index = ret_arr.index {|item| item == key}
        if index != nil
            ret_arr.delete_at(index)
        end
    when "deleteFirst"
        ret_arr.shift
    when "deleteLast"
        ret_arr.pop
    end
end
 
puts ret_arr.join(" ")