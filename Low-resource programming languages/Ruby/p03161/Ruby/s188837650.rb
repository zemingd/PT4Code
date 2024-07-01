$n, $k = gets.split.map &:to_i
$h = gets.split.map &:to_i

$memo = {0 => 0}
def solve(j)
	$memo[j] ||= (j-1).downto([0, j - $k].max).map { |i|
		($h[i] - $h[j]).abs + solve(i)
	}.min
end

p solve($n - 1)