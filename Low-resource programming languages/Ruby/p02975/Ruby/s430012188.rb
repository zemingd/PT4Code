N = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

ans = "Yes"

bf = nil
cn = nil
af = nil
arr.each.with_index do |n, i|

  next if i == 0
  bf = arr[i-1]
  cn = arr[i]
  
  index=i+1
  index=0 if not i+1 < N

  af = arr[index]
  
  if bf ^ af == cn
    next
  else
    ans = "No"
    break
  end
end
puts ans