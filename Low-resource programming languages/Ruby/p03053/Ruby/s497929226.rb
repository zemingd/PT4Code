io = STDIN
h,w=io.gets.split.map(&:to_i)
$board=[]
h.times do
  $board << (io.gets.chomp.split(//))
end
require 'pp'
queue=[]
cur=0
h.times do |i|
  w.times do |j|
    if $board[i][j]=="#"
      queue << i*w+j
      $board[i][j]=cur
    end
  end
end
while (a=queue.shift)
  i,j=a.divmod(w)
  cur=$board[i][j]
  [[1,0],[-1,0]].each do |x,y|
    ki,kj=x+i,y+j
    next if  ki<0 || ki>=h
    if $board[ki][kj]=="."
      $board[ki][kj]=cur+1
      queue << ki*w+kj
    end
  end
  [[0,-1],[0,1]].each do |x,y|
    ki,kj=x+i,y+j
    next if  kj<0 || kj>=w
    if $board[ki][kj]=="."
      $board[ki][kj]=cur+1
      queue << ki*w+kj
    end
  end
end
p cur
