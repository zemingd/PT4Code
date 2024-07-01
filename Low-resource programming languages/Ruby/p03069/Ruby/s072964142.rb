io = STDIN
n=io.gets.to_i
s=io.gets.chomp.split(//).chunk_while{|a,b|a==b}.to_a
if s.size==1
  puts 0
elsif s[-1][0]=="#" #右#
  if s[0][0]=="#"
    puts s.select{|ar|ar[0]=="."}.inject(0){|s,ar|s+ar.size}
  else
    puts s.select{|ar|ar[0]=="."}[1..-1].inject(0){|s,ar|s+ar.size}
  end
else  #右.
  if s[0][0]=="#"
    puts [s.select{|ar|ar[0]=="#"}.inject(0){|s,ar|s+ar.size},
          s.select{|ar|ar[0]=="."}.inject(0){|s,ar|s+ar.size}].min
  else
    puts [s.select{|ar|ar[0]=="#"}.inject(0){|s,ar|s+ar.size},
          s.select{|ar|ar[0]=="."}[1..-1].inject(0){|s,ar|s+ar.size}].min
  end
end
