#coding: UTF-8
if __FILE__ == $0
  while line = gets
    s = line.split(" ")[0]
    puts s.reverse   
  end
end