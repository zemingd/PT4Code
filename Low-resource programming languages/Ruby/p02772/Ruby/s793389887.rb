num = gets.to_i
arr = gets.strip.split("").map(&:to_i)

num.times { |i|
  if arr[i].even? && (arr[i] % 3 != 0 && arr[i] % 5 != 0)
    return puts "DENIED"
  else
    puts "APPROVED"
  end
}
  

