N,K,Q = gets.split.map &:to_i
arr = Array.new(N,K)
Q.times do
  a = gets.to_i
  arr[a-1] += 1
end
arr.each do |ar|
  if ar-Q <= 0
    puts 'No'
  else
    puts 'Yes'
  end
end

