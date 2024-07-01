k,a,b=`dd`.split.map &:to_i
puts a%k>0&&b%k>0&&a/k==b/k ? "NG" : "OK"