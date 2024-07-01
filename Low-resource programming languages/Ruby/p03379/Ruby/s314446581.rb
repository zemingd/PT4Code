n=gets.chomp.to_i
x=gets.chomp.split(" ").map { |e| e.to_i }

median = n/2 - 1
a = Marshal.load(Marshal.dump(x)).sort

def find_i(arry,var,n)
  for i in 0..n-1 do
    if arry[i] == var
      return i
    end
  end
end

for i in 0..n-1 do
  temp = find_i(a,x[i],n)
  if median >= temp
      puts a[median+1]
  else
    puts a[median]
  end
end