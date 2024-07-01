def get_count(v_array)
	
	v_array.sort
	
	v_impar_hash = Array.new
	
	v_array.each_with_index do |impar, index|
		if index == 0
			new_hash = {number: impar, count: 1}
			v_impar_hash.push(new_hash)
		else
			last_hash = v_impar_hash.pop
			if impar == last_hash[:number]
				last_hash[:count] += 1
				v_impar_hash.push(last_hash)
			else
				v_impar_hash.push(last_hash)
				new_hash = {number: impar, count: 1}
				v_impar_hash.push(new_hash)
			end
		end
	end
	
	v_impar_hash = v_impar_hash.sort_by { |hsh| hsh[:count] }.reverse
	return v_impar_hash
end

n = gets.chop.to_i
v = gets.split.map(&:to_i)

v_par = Array.new
v_impar = Array.new
for i in 0..v.length-1
	if i % 2 == 0
		v_impar.push(v[i])
	else
		v_par.push(v[i])
	end
end

v_impar_hash = get_count(v_impar)
v_par_hash = get_count(v_par)

# puts v_impar_hash
# puts v_par_hash
if v_impar_hash[0][:number] != v_par_hash[0][:number]
	result = n - v_impar_hash[0][:count] - v_par_hash[0][:count]
else
	if v_impar_hash.length == 1 && v_par_hash.length == 1
		result = n/2
	elsif v_impar_hash.length == 1
		result = n - v_par_hash[0][:count]
	elsif v_par_hash.length == 1
		result = n - v_impar_hash[0][:count]	
	else
		opt_1 = v_impar_hash[0][:count] + v_par_hash[1][:count]
		opt_2 = v_impar_hash[1][:count] + v_par_hash[0][:count]
		opt = opt_1 >=  opt_2 ? opt_1 : opt_2
		result = n - opt
	end
end

puts result