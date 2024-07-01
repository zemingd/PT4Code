arr=[]
gets.chomp.each_char{|c| arr<<c.to_i}
a,b,c,d=arr

ops_set = [
  ['+','+','+'],
  ['+','+','-'],
  ['+','-','+'],
  ['+','-','-'],
  ['-','+','+'],
  ['-','+','-'],
  ['-','-','+'],
  ['-','-','-']
          ]

ops_set.each do |ops|
  str="#{a}#{ops[0]}#{b}#{ops[1]}#{c}#{ops[2]}#{d}"
  if eval(str)==7
    puts "#{str}=7"
    exit
  end
end
