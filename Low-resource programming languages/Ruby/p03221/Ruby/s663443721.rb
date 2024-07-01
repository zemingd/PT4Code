input = gets.chomp.split(' ').map { |v| v.to_i }
n = input[0]
m = input[1]

cities = []
prefectures = []

m.times { |i|
  input = gets.chomp.split(' ').map { |v| v.to_i }
  
  prefectures[input[0]-1] = 1
  
  cities.push({
    prefecture: input[0],
    year: input[1]
  })
}

tmp = cities.sort {|a, b| a[:year] <=> b[:year]}
tmp.each {|city|
  city[:id] = format('%06d%06d', city[:prefecture], prefectures[city[:prefecture]-1])
  prefectures[city[:prefecture]-1] += 1
}

cities.each {|city|
  puts city[:id]
}