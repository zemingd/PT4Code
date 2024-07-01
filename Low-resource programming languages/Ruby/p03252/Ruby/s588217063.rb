# frozen_string_literal: true

S = gets.chomp.split("")
T = gets.chomp.split("")

mapping = {}
S.each_with_index {|s, i|
  t = T[i]

  if mapping[s] && mapping[s] != t
    puts "No"
    exit
  end

  mapping[s] = t
}

if mapping.length != mapping.values.uniq.length
  puts "No"
else
  puts "Yes"
end
