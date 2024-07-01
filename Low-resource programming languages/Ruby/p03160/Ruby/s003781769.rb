def main
  obstacle_grid = STDIN.gets('').split[2..-1].map{|x| x.split('') }
  unique_paths_with_obstacles(obstacle_grid)
end
 
def unique_paths_with_obstacles(obstacle_grid)
  m = obstacle_grid.size
  n = obstacle_grid.first.size
  dp = Array.new(m, 0) { Array.new(n, 0) }
  dp[0][0] = 1
    
  (0...m).each do |i|
    (0...n).each do |j|
      next if obstacle_grid[i][j] == '#'

        dp[i][j] = dp[i-1][j]+dp[i][j-1] if dp[i][j] == '.'
    end
  end
  dp[m-1][n-1]
end
 
puts main