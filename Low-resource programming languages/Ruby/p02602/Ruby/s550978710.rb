io = DATA.eof? ? STDIN : DATA
n,k=io.gets.split.map(&:to_i)
ar=io.gets.split.map(&:to_i)
cum=Array.new(n,1)
acm=1
from=0
n.times do |i|
  acm*=ar[i]
  if from+k-1==i
    cum[i]=acm
    acm/=ar[i-k+1]
    from+=1
  end
  if i>=k
    if cum[i]>cum[i-1]
      puts 'Yes'
    else
      puts 'No'
    end
  end
end
__END__