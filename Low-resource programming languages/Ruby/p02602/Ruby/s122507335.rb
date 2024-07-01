io = DATA.eof? ? STDIN : DATA
n,k=io.gets.split.map(&:to_i)
ar=io.gets.split.map(&:to_i)
cum=Array.new(n+1,1)
cum[0]=1
n.times do |i|
  cum[i+1]*=cum[i]*ar[i]
end
(n-k).times do |i|
  if cum[i+k]/cum[i] < cum[i+k+1]/cum[i+1]
    puts 'Yes'
  else
    puts 'No'
  end
end
__END__
