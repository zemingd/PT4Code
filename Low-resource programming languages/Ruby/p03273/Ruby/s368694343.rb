io = STDIN
h,w=io.gets.split.map(&:to_i)
maze=[]


h.times do |i|
  maze << io.gets.chomp.split(//)
end
maze.select!{|row|row.any?{|c|c=="#"}}
tran=maze.transpose.select{|row|row.any?{|c|c=="#"}}
puts tran.transpose.map{|ar|"#{ar.join}\n"}.join
