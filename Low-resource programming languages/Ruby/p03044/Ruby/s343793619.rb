require 'pp'

N = readline.chomp.to_i

$edges = Hash.new {|h,k| h[k] = [] }
(N-1).times do |i|
  i,j,w = readline.chomp.split.map(&:to_i)
  $edges[i-1] << [j-1,w]
  $edges[j-1] << [i-1,w]
end

$colors = Array.new(N,nil)
def dfs(i)
  $edges[i].each do |j,w|
    next if $colors[j] != nil
    if w % 2 == 0
      $colors[j] = $colors[i]
      dfs(j)
    else
      $colors[j] = ($colors[i]+1)%2
      dfs(j)
    end
  end
end
# pp $edges

$colors[0] = 0
dfs(0)
puts $colors
