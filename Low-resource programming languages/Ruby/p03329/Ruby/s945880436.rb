n = gets.chomp.to_i
def log9(x)
  (Math.log(x)/Math.log(9)).floor
end
def log6(x)
  (Math.log(x)/Math.log(6)).floor
end
$dfs_hash = {0 => 0}
def dfs(n)
  return $dfs_hash[n] if $dfs_hash[n]
  pow9 = log9(n)
  pow6 = log6(n)
  return n if pow9 == 0 && pow6 == 0
  if pow9 > 0 && pow6 > 0
    $dfs_hash[n] = [dfs(n-9**pow9),dfs(n-6**pow6)].min + 1
  elsif pow9 > 0
    $dfs_hash[n] = dfs(n-9**pow9) + 1
  else
    $dfs_hash[n] = dfs(n-6**pow6) + 1
  end
end
puts dfs(n)
