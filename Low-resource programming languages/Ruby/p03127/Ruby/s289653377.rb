#!/bin/ruby

n = gets.chomp.to_i
hps = gets.chomp.split(" ").map(&:to_i).uniq

hp_hash = {}
hps.each_with_index do |hp, i|
  hp_hash[hp] = i
end

while true
  if hps.length == 1
    break
  end
  max_hp = hps.max

  tmp_hp_data = {before: 0, after: 0}
  hps.each do |hp|
    next if max_hp == hp
    amari = max_hp % hp
    next if amari == 0
    if tmp_hp_data[:after] < amari
      tmp_hp_data[:before] = max_hp
      tmp_hp_data[:after] = amari
    end
  end
  if tmp_hp_data[:after] == 0
    hps.delete(max_hp)
    hp_hash.delete(max_hp)
  else
    hp_hash[tmp_hp_data[:after]] = hp_hash.delete(tmp_hp_data[:before])
    hps = hp_hash.keys
  end
end
puts hp_hash.keys[0]

