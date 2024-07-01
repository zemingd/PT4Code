def Euclid(x,y)
  x, y = y, x%y while y > 0
  x
end

def BinaryTree(a)
  ret, arr = [], Marshal.load(Marshal.dump(a))
  if arr.size == 1
    return arr
  else
    if arr.size%2 != 0
      arr << arr[(arr.size-1)]
    end
    (0...(arr.size)/2).each do |i|
      ret << Euclid( arr[2*i], arr[2*i+1] )
    end
    BinaryTree(ret)
  end
end

n = gets.to_i
a = gets.split.map(&:to_i)
gcd = 0
(0...n).each do |i|
  temp = Marshal.load(Marshal.dump(a))
  temp.delete_at(i)
  some = BinaryTree( temp )
  if gcd < some[0]
    gcd = some[0]
  end
end
p gcd