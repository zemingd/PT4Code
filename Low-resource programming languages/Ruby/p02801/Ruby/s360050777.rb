N,K,M = gets.split(" ").map(&:to_i)
amount = gets.split(" ").map(&:to_i).inject(:+)
last = N*M - amount
if last <  K
  if last <= 0
  	print 0
  else
    print last
  end
else
  print -1
end