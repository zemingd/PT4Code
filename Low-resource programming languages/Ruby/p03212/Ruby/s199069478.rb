require 'pp'
require 'set'

class Shinsu
    include Enumerable

    def initialize
        @data = []
    end

    def next
        if @data.empty?
            @data = ['7', '5', '3']
            return @data
        else
            digit(0)
            @data
        end
    end

    def digit(index)
        x = @data[index]
        if x == nil
            @data[index] = '3'
        elsif x == '7'
            @data[index] = '3'
            digit(index + 1)
        elsif x == '3'
            @data[index] = '5'
        else
            @data[index] = '7'
        end
    end 
end

n = gets.chomp!.to_i
x = Shinsu.new

count = 0
loop do
    z = x.next.reverse
    if z.join.to_i > n
        break
    end

    if z.group_by{|x| x}.keys.length == 3
        count += 1
    end
end

puts count
