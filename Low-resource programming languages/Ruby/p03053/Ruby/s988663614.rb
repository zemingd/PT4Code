io = STDIN
h,w=io.gets.split.map(&:to_i)
$board=[]
h.times do
  $board << (io.gets.chomp.split(//))
end
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
  ki=i+1
  if ki<h && $board[ki][j]=="."
    $board[ki][j]=cur+1
    queue << ki*w+j
  end
  ki=i-1
  if ki>=0 && $board[ki][j]=="."
    $board[ki][j]=cur+1
    queue << ki*w+j
  end
  kj=j+1
  if kj<w && $board[i][kj]=="."
    $board[i][kj]=cur+1
    queue << i*w+kj
  end
  kj=j-1
  if kj>=0 && $board[i][kj]=="."
    $board[i][kj]=cur+1
    queue << i*w+kj
  end
end
p cur
