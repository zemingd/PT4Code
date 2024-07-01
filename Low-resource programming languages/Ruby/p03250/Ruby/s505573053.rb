#!/usr/bin/env ruby

nums = gets.chomp.split(/ /).map(&:to_i)
nums.sort!{|a, b| b <=> a}

answer = eval "#{nums[0]}#{nums[1]} + #{nums[2]}"

puts answer