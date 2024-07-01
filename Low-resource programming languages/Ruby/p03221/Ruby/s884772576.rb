# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
addresses = m.times.map { gets.split.map(&:to_i) }

grouped = addresses.group_by {|address| address[0] }

addresses.each {|address|
  city_num = grouped[address[0]].map {|address| address[1] }.sort.find_index {|year| year == address[1] } + 1
  puts "#{format('%06d', address[0])}#{format('%06d', city_num)}"
}