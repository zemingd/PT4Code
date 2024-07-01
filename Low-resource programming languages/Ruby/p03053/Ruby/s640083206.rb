io = STDIN
h,w=io.gets.split.map(&:to_i)
$board=h.times.map do
  Array.new(w,0)
end
queue=[]
h.times do |i|
  io.gets.chomp.each_char.with_index do |c,j|
    next if c=="."
    $board[i][j]=1
    queue << i*w+j
  end
end
while (a=queue.shift)
  i,j=a.divmod(w)
  cur=$board[i][j]
  if i+1<h && $board[ki=i+1][j]==0
    $board[ki][j]=cur+1
    queue << ki*w+j
  end
  if i>=1 && $board[ki=i-1][j]==0
    $board[ki][j]=cur+1
    queue << ki*w+j
  end
  if j+1<w && $board[i][kj=j+1]==0
    $board[i][kj]=cur+1
    queue << i*w+kj
  end
  if j>=1 && $board[i][kj=j-1]==0
    $board[i][kj]=cur+1
    queue << i*w+kj
  end
end

p cur-1
