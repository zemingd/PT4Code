N = gets.to_i
T,A = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)

argmin = -1
min = 10**9

H.each_with_index do |x, i|
  tmp = ((T - H[i] * 0.006) - A).abs

  if tmp < min
    min = tmp
    argmin = i+1
  end
end

puts argmin
