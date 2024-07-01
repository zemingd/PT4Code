#!/usr/bin/env ruby

def gcd(a, b)
    gcd(b, a) if b > a
    return b if (r = a % b).zero?
    gcd(b, r)
end


n, x = gets.split.map &:to_i
points = gets.split.map &:to_i
points.unshift(x)

diffs = []

points.each_with_index do |pos, idx|
    break if idx == points.size - 1
    diffs.push (points[idx + 1] - points[idx]).abs
end

current_divide = diffs[0]
diffs.each do |d|
    current_divide = gcd(current_divide, d)
end

puts current_divide