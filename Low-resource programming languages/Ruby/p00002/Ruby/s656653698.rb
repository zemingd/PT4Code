n = gets.to_i
n.times{
  arr = gets.split(" ").map(&:to_i)
  if arr[0]**2 + arr[1]**2 == arr[2]**2
    puts "Yes"
  else
    puts "No"
  end
}