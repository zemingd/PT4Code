
MOD = 998244353

def solve

  n = gets.to_i
  dists = gets.split.map(&:to_i)


  dists.sort!

  if dists.count(0) > 1
    puts "0"
    return
  end

  current_dist = 0
  current_dist_num = 0
  parent_dist_num = 1
  combs = []
  res = 0


  dists.each do |d|
    if current_dist != d
      combs << parent_dist_num ** current_dist_num
      parent_dist_num = current_dist_num
      current_dist_num = 0
      # puts "dist: #{d - 1}: #{parent_dist_num} nodes"
      current_dist = d 
    end
    # puts "current: #{current_dist}"
    current_dist_num += 1
  end

  combs << parent_dist_num ** current_dist_num


  # p combs
  puts combs.inject(:*) % MOD
end

solve()