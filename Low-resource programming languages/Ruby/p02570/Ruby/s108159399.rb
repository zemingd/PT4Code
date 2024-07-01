#!/usr/bin/env ruby
i = gets
dist, time, speed = i.chomp.split(" ").map(&:to_i)
puts (time * speed >= dist) ? "Yes" : "No"