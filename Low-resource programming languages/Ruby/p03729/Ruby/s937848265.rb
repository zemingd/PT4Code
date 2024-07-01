io = STDIN
n,ww=io.gets.chomp.split.map(&:to_i)
hash=Hash.new{|h,k|h[k]=[]}
n.times do
  w,v=io.gets.chomp.split.map(&:to_i)
  hash[w]<<v
end
hash.keys.each do |k|
  hash[k].sort!.reverse!
end
hh={}
hash.each do |k,v|
  hh[k]=v.size
end
ans=0
keys=hh.keys
if keys.size==3
  (0..hh[keys[0]]).each do |i|
    (0..hh[keys[1]]).each do |j|
      (0..hh[keys[2]]).each do |k|
        if (keys[0]*i + keys[1]*j + keys[2]*k) <= ww
          sum=0
          s=hash[keys[0]][0,i].inject(:+)
          sum+=s if s
          s=hash[keys[1]][0,j].inject(:+)
          sum+=s if s
          s=hash[keys[2]][0,k].inject(:+)
          sum+=s if s
          ans=[ans,sum].max
        end
      end
    end
  end
end
if keys.size==2
  keys=hh.keys
  (0..hh[keys[0]]).each do |i|
    (0..hh[keys[1]]).each do |j|
      if (keys[0]*i + keys[1]*j) <= ww
        sum=0
        s=hash[keys[0]][0,i].inject(:+)
        sum+=s if s
        s=hash[keys[1]][0,j].inject(:+)
        sum+=s if s
        ans=[ans,sum].max
      end
    end
  end
end
if keys.size==1
  keys=hh.keys
  (0..hh[keys[0]]).each do |i|
        if (keys[0]*i) <= ww
          sum=0
          s=hash[keys[0]][0,i].inject(:+)
          sum+=s if s
          ans=[ans,sum].max
        end
  end
end
p ans