arr = gets.split('').map(&:to_i)

n = arr.shift
count = 1
ans = 'No'
arr.each do |e|
  if n == e
    count += 1
    if count >= 3
      ans = 'Yes'
      break
    end
  else
    count = 1
    n = e
  end
end

puts  ans
