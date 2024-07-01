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
  ki,kj=i+1,j
  if ki<h && $board[ki][kj]=="."
    $board[ki][kj]=cur+1
    queue << ki*w+kj
  end
  ki,kj=i-1,j
  if ki>0 && $board[ki][kj]=="."
    $board[ki][kj]=cur+1
    queue << ki*w+kj
  end
  ki,kj=i,j+1
  if kj<w && $board[ki][kj]=="."
    $board[ki][kj]=cur+1
    queue << ki*w+kj
  end
  ki,kj=i,j-1
  if kj>0 && $board[ki][kj]=="."
    $board[ki][kj]=cur+1
    queue << ki*w+kj
  end
end
p cur
