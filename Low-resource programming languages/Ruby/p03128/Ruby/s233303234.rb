io = STDIN
N,_=io.gets.split.map(&:to_i)
a=io.gets.split.map(&:to_i)
#      1 2 3 4 5 6 7 8 9
$ar=[0,2,5,5,4,5,6,3,7,6]  #各数字の本数
#          - -     - -
$dp=Array.new(N+10)
$dp[0]=0
#                    1 1 1 1 1 1 1 1 1 1
#0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9
#
(0..N).each do |i|
  a.each do |num|  #num  3 7 8 4
                   #m    5 3 7 4
    m=$ar[num] #m:本数
    # p ["num,m,i,$dp[i]*10+num,$dp[i+m]",num,m,i,$dp[i]*10+num,$dp[i+m]]
    next if  $dp[i]==nil
    if $dp[i+m]==nil || $dp[i]*10+num > $dp[i+m]
      $dp[i+m]=$dp[i]*10+num
    end
  end
end
p $dp[N]
