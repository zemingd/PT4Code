require "pp"

N, M = gets.split.map(&:to_i)
city_array = []
M.times{|index|
  nums = gets.split.map(&:to_i)
  city_array << {index: index, prefec: nums[0], year: nums[1]}
}

sorted_array = city_array.sort{|a, b|
  a[:year] <=> b[:year]
}

backet_hash = {}

city_id_array = sorted_array.map{|item|
  index = backet_hash[item[:prefec].to_s.to_sym]
  index ||= 1
  p_id = format("%06d", item[:prefec]).to_s
  city_id = format("%06d", index).to_s
  index += 1
  backet_hash[item[:prefec].to_s.to_sym] = index

  {index: item[:index], id: (p_id + city_id).to_i}
}

city_id_array.sort{|a, b|
  a[:index] <=> b[:index]
}.each{|item|
  puts format("%012d", item[:id])
}
