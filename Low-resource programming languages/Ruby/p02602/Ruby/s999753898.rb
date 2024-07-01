io = DATA.eof? ? STDIN : DATA
n,k=io.gets.split.map(&:to_i)
ar=io.gets.split.map(&:to_i)
cum=Array.new(n,1)
acm=1
from=0
n.times do |i|
  if i>=k
    if ar[i]>ar[i-k]
      puts 'Yes'
    else
      puts 'No'
    end
  end
end
__END__
