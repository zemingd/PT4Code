io = DATA.eof? ? STDIN : DATA
n,k=io.gets.split.map(&:to_i)
ar=io.gets.split.map(&:to_i)
cum=Array.new(k){Array.new(n,1)}

n.times do |i|
  k.times do |j|
    next if i+j>=n
    cum[0][i+j]=cum[0][i+j]*ar[i]
  end
end
((k-1)...n).each_cons(2) do |i,j|
  if cum[0][j]>cum[0][i]
    puts 'Yes'
  else
    puts 'No'
  end
end
__END__
