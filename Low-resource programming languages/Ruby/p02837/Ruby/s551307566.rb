N = gets.to_i
I = 2**N - 1
alist=[]
xlist=[]
ylist=[]
for i in 0..N-1
  A = gets.to_i
  X,Y = A.times.map{gets.split.map(&:to_i)}.transpose
  alist.push(A)
  xlist.push(X)
  ylist.push(Y)
end
result = 0
Slist = [0,1].repeated_permutation(N).to_a
for S in Slist
  breakflag = false
  for n in 0..N-1
    if S[n] == 1
      for a in 0..alist[n]-1
        if S[xlist[n][a]-1] != ylist[n][a]
          breakflag = true
          break
        end
      end
    end
    break if breakflag
  end
  if breakflag == false
    if result < S.count(1)
      result = S.count(1)
    end
  end
end
p result