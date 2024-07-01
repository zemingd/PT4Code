#!/usr/bin/env ruby

n = gets.chomp.to_i

words = Array.new
hash = Hash.new(0)

n.times do
  str = gets.chomp
  words << str
  hash[str] += 1
end

result = ''

vals = hash.values.uniq
vals.each do |v|
  if (v > 1)
    result = 'No'
  end
end

first = words.shift
e = first.split(//)[-1]

if (result != 'No')
  words.each do |w|
    sp_string = w.split(//)
    s = sp_string[0]
    if (e == s)
      e = sp_string[-1]
    else
      result = 'No'
      break
    end
  end
  result ||= 'Yes'
end

puts result
