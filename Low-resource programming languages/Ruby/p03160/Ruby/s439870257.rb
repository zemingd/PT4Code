	# A - Frog 1
# https://atcoder.jp/contests/dp/tasks/dp_a

N = gets.chomp.to_i
H = gets.chomp.split.map(&:to_i)

@memo = Array.new(N) {Array.new(H.reduce(:+)) { nil }}

# c そこまでのコスト
def solve(i, c)
  #p [i, c,  @memo[i][c] ]
  return @memo[i][c] unless @memo[i][c].nil?

  if i >= N-1
    @memo[i][c] = c
    return @memo[i][c]
  end

  if i >= N-2
    @memo[i][c] = solve(i+1, c + (H[i+1] - H[i]).abs)
    return @memo[i][c]
  end

  # when jump to i+1
  c1 = solve(i+1, c + (H[i+1] - H[i]).abs)
  # when jump to i+2
  c2 = solve(i+2, c + (H[i+2] - H[i]).abs)

  @memo[i][c] = [c1,c2].min
  return @memo[i][c]
end


puts solve(0, 0)
