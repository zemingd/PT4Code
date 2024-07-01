A,B,K = gets.split.map(&:to_i)
arr = []
(1..K).each do |a|
  if (A % a == 0) && (B % a == 0)
    arr.push(a)
  end
end
puts arr[K-1]