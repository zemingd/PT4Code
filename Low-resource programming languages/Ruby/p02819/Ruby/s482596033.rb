def prime?(n)
  2.upto(n-1) do |i|
    if n % i == 0
      return false
    end
  end
  return true
end

N = gets.to_i

N.step do |i|
  if prime?(i)
    puts i
    break
  end
end