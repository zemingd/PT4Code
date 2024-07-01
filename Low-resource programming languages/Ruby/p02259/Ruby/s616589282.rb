n=gets.to_i
arr=gets.split.map(&:to_i)
num=0
for i in 0..n-1
  (n-1).downto(i+1) do |j|
    if(arr[j]<arr[j-1])
      arr[j],arr[j-1]=arr[j-1],arr[j]
      num+=1
    end
  end
end
puts arr.join(' ')
puts num