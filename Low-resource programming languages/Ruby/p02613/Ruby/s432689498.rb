hash = {AC: 0, WA: 0, TLE: 0, RE: 0}
n = gets.chomp.to_i
i = 0
while i < n
  j = gets.chomp
  case j
  when "AC"
    hash[:AC] += 1
  when "WA"
    hash[:WA] += 1
  when "TLE"
    hash[:TLE] += 1
  else
    hash[:RE] += 1
  end
  i += 1
end
hash.each { |k,v|
  puts "#{k} x #{v}"
}