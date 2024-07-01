N = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

first = arr.shift
bf = first

ans = "Yes"

arr.each.with_index do |n, i|
  
  cent = n
  af = nil
  if i+2 < N
    af = arr[i+1]
  else
    af = first
  end

  if bf ^ af == cent
    bf = cent
    cent = af
    next
  else
    ans = "No"
    break
  end
end
puts ans