$memo = {}

def attack(x)
	if x==1 then
		return 1
	else
		if !$memo.has_key?(x) then
		    $memo[x]=1+attack(x/2)*2
		end
		return $memo[x] 
	end
end




h=gets.to_i

p attack(h)

