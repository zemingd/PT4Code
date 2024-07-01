require 'pp'
require 'prime'

x = gets.to_i
Prime.each(100000000) do |i|
    next if i < x

    puts i
    break
end
