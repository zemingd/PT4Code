n, m = gets.split.map(&:to_i)
geo_data = []
1.upto m do |i|
  p_id, established_year = gets.split.map(&:to_i)
  geo_data.push({ idx: i, p_id:  p_id, established_year: established_year })
end
geo_data = geo_data.group_by { |h| h[:p_id] }
ans = []
geo_data.each do |k, v|
  ans += city = v.sort_by { |h| h[:established_year] }.map.with_index 1 do |h, i|
    { idx: h[:idx], id: "#{ "%#06d" % h[:p_id]}#{"%#06d" % i}" }
  end
end
ans.sort_by { |a| a[:idx] }.each { |a| puts a[:id] }
