n,k = $stdin.gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i)

(n-k).times do |l|
  if  arr[l+k]  >  arr[l]
    puts "Yes"
  else
    puts "No"
  end
end