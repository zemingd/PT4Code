io = STDIN
n=io.gets.to_i
ss=io.gets.chomp.split(//).chunk_while{|a,b|a==b}.to_a
def calc(s)
  if s.size==1
    puts 0
  elsif s[-1][0]=="#" # 右:#
    if s[0][0]=="#"
      s.select{|ar|ar[0]=="."}.inject(0){|s,ar|s+ar.size}
    else
      s.select{|ar|ar[0]=="."}[1..-1].inject(0){|s,ar|s+ar.size}
    end
  else  # 右:.
    if s[0][0]=="#"
      [s.select{|ar|ar[0]=="#"}.inject(0){|s,ar|s+ar.size},
      s.select{|ar|ar[0]=="."}.inject(0){|s,ar|s+ar.size}].min
    else
      [s.select{|ar|ar[0]=="#"}.inject(0){|s,ar|s+ar.size},
      s.select{|ar|ar[0]=="."}[1..-1].inject(0){|s,ar|s+ar.size}].min
    end
  end
end
if ss[-1][0]=="#"
  puts [calc(ss),calc(ss[0..-2])].min
else
  puts calc(ss)
end
