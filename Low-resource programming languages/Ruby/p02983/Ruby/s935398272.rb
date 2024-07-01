l,r = gets.split.map{ |x| x.to_i }

res = 2018

mod_set = {}

(l..r).each_with_index{ |i, idx|
	mod_set[i % 2019] = true
	if idx >= 2019 then
		break
	end
}

arr = mod_set.keys.sort

(0...arr.size).each{ |i|
	((i+1)...arr.size).each{ |j|
		ex = arr[i] * arr[j] % 2019
		if res > ex then
			res = ex
		end
	}
}

puts res