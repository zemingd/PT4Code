def search(_take)
	max=-9999
	max_num=nil
	($take.size).times do|i|
		if _take-$take[i]>0 and max<$take[i]
			max=$take[i]
			max_num=i
		end
	end
	if max==-9999
		gosa=9999
		($take.size).times do|i|
			if(_take-ls).abs<gosa
				gosa=(_take-ls).abs
			end
			return gosa
		end
		return 
	end
	_take-=max
	$take.delete_at(max_num)
	mp=search(_take)
	return mp+10
end
info=gets.chomp.split(" ").map(&:to_i)
n=info[0]
info.shift
$take=Array.new(n)
n.times do|i|
	$take[i]=gets.to_i
end
del=info&$take
del.size.times do|i|
	info.delete(del[i])
	$take.delete(del[i])
end
$take.sort.reverse
p info
p search(info[0]),search(info[1]),search(info[2])