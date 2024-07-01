n=gets.chomp.to_i
l=gets.chomp.split(' ').map(&:to_i)
cnt=0
l2=l.sort
h={}
l2.each_with_index do |a,i|
  failed=0
  l2.each_with_index do |b,j|
    next if i==j
    break if failed > b
    ab=a+b
    l2.each_with_index do |c,k|
      key=[i,j,k].sort
      next if h[key]
      h[key] = true
      next if i == k || k == j
      if ab<c || a>b+c || b>a+c
        failed = c
        break
      end
      if ab>c && a+c>b&& b+c>a
        cnt+=1
      end
    end
  end
end

puts cnt