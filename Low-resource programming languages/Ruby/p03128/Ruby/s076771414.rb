#n本のマッチをピッタリ使い、mの数字の範囲で最大

waste = {
1 => 2,
2 => 5,
3 => 5,
4 => 4,
5 => 5,
6 => 6,
7 => 3,
8 => 7,
9 => 6,
}

n, m = gets.split.map &:to_i
as = gets.split.map &:to_i

$diff = {}

as.each{ |x|
	if $diff[waste[x]] == nil then
		$diff[waste[x]] = []
	end
	
	$diff[waste[x]] << x
}

$diff.each{ |k, v|
	$diff[k] = v.max
}

$diff_keys = $diff.keys.sort

$lcm = $diff_keys[0]

$diff_keys[1..-1].each{ |x|
	$lcm = $lcm.lcm(x)
} 

$count = Array.new($diff_keys.size, 0)

#p $diff
#p $diff_keys
#p $lcm

$result = []
$digit_count = nil

def ll(remain, idx)
#	puts "remain:" + remain.to_s
#	puts "key:" + $diff_keys[idx].to_s
	start = remain / $diff_keys[idx]
#	puts "start:" + remain.to_s
#	puts
	start.downto([start - $lcm / $diff_keys[idx], 0].max){ |i|
		$count[idx] = i
		next_remain = remain - i * $diff_keys[idx]

		if next_remain == 0 then
			output = []
			$count.each_with_index{ |d, k|
				output << $diff[$diff_keys[k]].to_s * d
			}

			val = output.sort.reverse.join("")

			if $digit_count == nil || $digit_count == val.size then
				$digit_count = val.size
				$result << val.to_i
			else
				puts $result.max
				exit
			end
		end

		if next_remain > 0 && idx < $diff_keys.size - 1 then
			ll(next_remain, idx + 1)
		end
	}
end

ll(n, 0)

puts $result.max
