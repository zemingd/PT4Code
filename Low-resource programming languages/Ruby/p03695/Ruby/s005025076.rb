io = STDIN
n=io.gets.chomp.to_i
a=io.gets.chomp.split.map(&:to_i)
hash=Hash.new{|h,k|h[k]=0}
ar=[]
a.each do |x|
  if x<3200
    hash[x/400]+=1
  else
    ar<< x
  end
end
max = (hash.keys.size+ar.size)
puts "#{hash.keys.size} #{max>8 ? 8 : max}"