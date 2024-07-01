#!/usr/bin/env ruby
n, m = gets.split.map {|i|i.to_i}

foods = []
m.times { foods.push(0) }
n.times do |i|
    answers = gets.split.map {|i|i.to_i}[1...]
    answers.each { |f|foods[f] += 1  }
end

res = foods.find_all{|i| i == n}
puts res.size