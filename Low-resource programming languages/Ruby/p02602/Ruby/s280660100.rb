n,k = $stdin.gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i)

ans = 1
ans_mae = 1
k.times do |l|
  ans = ans * arr[l]
end

(n-k).times do |l|
  ans_mae = ans
  ans = ans * arr[l+k] / arr[l]
  if ans > ans_mae
    puts "Yes"
  else
    puts "No"
  end
end