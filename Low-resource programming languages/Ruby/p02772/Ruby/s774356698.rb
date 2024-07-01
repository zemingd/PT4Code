num = gets.to_i
arr = gets.strip.split("").map(&:to_i)
con = 0
num.times { |i|
  if arr[i].even? && (arr[i] % 3 != 0 && arr[i] % 5 != 0)
    con += 1
  end
}
puts con == 0 ? "APPROVED" : "DENIED"
    
  

