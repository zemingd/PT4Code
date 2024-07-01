require 'pp'

R = [nil,2,5,5,4,5,6,3,7,6]

N,M = readline.chomp.split.map(&:to_i)
A = readline.chomp.split.map(&:to_i).sort.reverse

REQ = A.map {|a| R[a] }.uniq.sort
NUM = REQ.map {|r| A.find_all {|a| R[a]==r}.max }
# pp REQ,NUM

$max = 0
$max_matches = []
n_match = Array.new(REQ.size, 0)

def match_to_int(match)
  a = []
  match.size.times do |i|
    a += [NUM[i]] * match[i]
  end
  a.sort.reverse.map(&:to_s).join.to_i
end

def dfs(depth, n_match, n)
  #pp "#{depth}, #{n_match.inspect}, #{n}" if depth == n_match.size
  if depth == n_match.size
    if n == 0
      sum = n_match.inject(:+)
      if sum > $max
        $max = sum
        $max_matches = [n_match.dup]
      elsif sum == $max
        $max_matches << n_match.dup
      end
    end
    return true
  end

  r = REQ[depth]
  cur_digits = n_match[0..(depth-1)].inject(:+)
  return false if $max > cur_digits + n/r
  (0..n/r).to_a.reverse.each do |i|
    n_match[depth] = i
    b = dfs(depth+1, n_match, n-i*r)
    break unless b
  end
end

dfs(0, n_match, N)

puts $max_matches.map {|match| match_to_int(match) }.max

