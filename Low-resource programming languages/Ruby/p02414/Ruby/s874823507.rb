  require "matrix"
  iN,iM,iL=$stdin.gets.split.map(&:to_i)
  arrA=[]
  iN.times do |n|
    arrA<<$stdin.gets.split.map(&:to_i)
  end
  arrB=[]
  iM.times do |n|
    arrB<<$stdin.gets.split.map(&:to_i)
  end

  mxA=Matrix.rows(arrA)
  mxB=Matrix.rows(arrB)
  mxC=mxA*mxB
  mxC.to_a.each do |r|
    puts r.join " "
  end
