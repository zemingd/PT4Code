n=gets.chomp.to_i
x=gets.chomp.split(" ").map { |e| e.to_i }

median = n/2 - 1
a = Marshal.load(Marshal.dump(x)).sort

def binary_search(a,n,x)
  ub = n
  lb = -1

  while ub-lb > 1
    m = (lb+ub)/2
    if a[m] >= x
        ub = m
    else
      lb = m
    end
  end

return ub

end


for i in 0..n-1 do
  temp = binary_search(a,n,x[i])
  if median >= temp
      puts a[median+1]
  else
    puts a[median]
  end
end