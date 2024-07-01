$n = gets.to_i - 1
$h = gets.split.map(&:to_i)

$memo = {0 => 0, 1 => ($h[0] - $h[1]).abs}
def solve(i)
	$memo[i] ||= [
		($h[i - 2] - $h[i]).abs + solve(i - 2),
		($h[i - 1] - $h[i]).abs + solve(i - 1)
	].min
end

p solve($n)