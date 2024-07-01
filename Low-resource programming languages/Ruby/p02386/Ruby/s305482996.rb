#!/usr/bin/env ruby

require 'set'

class Dice
	attr_reader :top, :s, :e

    def initialize(top, s, e, w, n, bottom)
        @top    = top
        @s      = s
        @e      = e
        @w      = w
        @n      = n
        @bottom = bottom
	end

	def rotate!(dist)
		@top, @s, @e, @w, @n, @bottom = 
		case dist
		when 'N' then [@s, @bottom, @e, @w, @top, @n]
		when 'S' then [@n, @top, @e, @w, @bottom, @s]
		when 'E' then [@w, @s, @top, @bottom, @n, @e]
		when 'W' then [@e, @s, @bottom, @top, @n, @w]
		end
	end
end

if __FILE__ == $0 then
	srand(0)

	n = gets.chomp.to_i
	dice = ([0]*n).map { |x| Dice.new(*gets.split.map(&:to_i))}
	ref  = [*1..n].map { |x| Set.new()}

	1000.times do
		if ref[0].size > 23 then
			break
		end

		dist = 'NEWS'[rand(4)]
		n.times do |i|
			ref[i].add([dice[i].top, dice[i].s, dice[i].e])
			dice[i].rotate!(dist)
		end
	end

	puts ref.to_set.size == n ? 'Yes' : 'No'
end

