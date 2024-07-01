# frozen_stirng_literal: true

arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
    a_j.to_i
end

arr.sort!

puts arr[2] * 10 + arr[1] + arr[0]
