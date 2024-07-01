n =  gets.to_i
arr = gets.split.map(&:to_i)
ans = "APPROVED"
arr.each do |ar|
  if ar.even?
    unless ar % 3 == 0 || ar % 5 == 0
      ans = "DENIED"
    end
  end
end
puts ans