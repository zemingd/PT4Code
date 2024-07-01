#!/usr/bin/env ruby

(h, w) = gets.chomp.split(/ /).map(&:to_i)

bord = []
h.times do
  bord << gets.chomp
end


def del_dot(bord)
  nbord = []
  bord.each do |b|
    if b =~ /#/
      nbord << b.split(//)
    end
  end
  return nbord
end

def turn_bord(bord)
  turnd = []
  s = bord.size #5
  ss = bord[0].size #3

  ss.times do |i|
    str = ''
    bord.each do |b|
      str += b[i]
    end
    turnd[i] = str
  end

  return turnd
end

nbord = del_dot(bord)
tbord = turn_bord(nbord)
resbord = del_dot(tbord)
final_res = turn_bord(turn_bord(turn_bord(resbord)))

final_res.each do |f|
  puts f
end
