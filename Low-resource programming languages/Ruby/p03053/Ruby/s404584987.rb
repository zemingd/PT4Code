io = STDIN
h,w=io.gets.split.map(&:to_i)
$board=[]
$board << [" "]*(w+2)
h.times do
  $board << [" "]+io.gets.chomp.split(//)+[" "]
end
$board << [" "]*(w+2)
require 'pp'
def check(h,w,old,nxt)
  res=false
  (1..h).each do |i|
    (1..w).each do |j|
      if $board[i][j] == old
        [[1,0],[0,-1],[-1,0],[0,1]].each do |x,y|
          ($board[i+x][j+y]=nxt;res=true) if $board[i+x][j+y]=="."
        end
      end
    end
  end
  res
end
old,nxt="#",1
while (check(h,w,old,nxt))
  old=nxt
  nxt+=1
end
p old=="#" ? 0 : old
