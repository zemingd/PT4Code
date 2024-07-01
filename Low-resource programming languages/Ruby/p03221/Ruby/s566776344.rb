_n, m = gets.split.map(&:to_i)
cities = []
count = 0
m.times do
  p, y = gets.split.map(&:to_i)
  cities << { count: count, pref: p, year: y }
  count += 1
end

cities.sort! { |a, b|
  (a[:pref] <=> b[:pref]).nonzero? ||
  a[:year] <=> b[:year]
}

current_pref = 0
number = 1
cities.map! { |city|
  if city[:pref] != current_pref
    current_pref = city[:pref]
    number = 1
  end
  city[:number] = number
  number += 1
  city
}

cities.sort_by { |city| city[:count] }.each do |city|
  puts sprintf "%06d%06d",city[:pref],city[:number]
end
