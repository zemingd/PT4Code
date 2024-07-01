io = STDIN
N=io.gets.to_i
A=io.gets.split.map(&:to_i)
uniq=A.uniq
hash=Hash.new{|h,k|h[k]=0}
if uniq.size==1 && uniq[0]==0
  puts 'Yes'
else
  A.each {|a|hash[a]+=1}
  k=hash.keys

  if N % 3 == 0 &&
    hash.size==3 &&
    hash.values.uniq.size==1 &&
    k[0]^k[2] ==k[1]
    puts 'Yes'
  else
    puts 'No'
  end
end
