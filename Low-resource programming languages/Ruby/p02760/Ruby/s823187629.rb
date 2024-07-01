a = {}
a['11'],a['12'],a['13'] = gets.chomp.split(' ')
a['21'],a['22'],a['23'] = gets.chomp.split(' ')
a['31'],a['32'],a['33'] = gets.chomp.split(' ')
N = gets.to_i
b = []
N.times do
  b << gets.chomp
end

a.delete_if do |k,v|
  b.include?(v)
end

[
  ['11','12','13'],
  ['21','22','23'],
  ['31','32','33'],
  ['11','22','33'],
  ['13','22','31'],
  ['11','21','31'],
  ['12','22','32'],
  ['13','23','33'],
].each do |arr|
  unless (a[arr[0]] || a[arr[1]] || a[arr[2]])
    puts 'Yes'
    exit
  end
end
  
puts 'No'
