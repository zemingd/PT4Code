# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
addresses = m.times.map { gets.split.map(&:to_i) }

grouped = addresses.group_by {|address| address[0] }.each_with_object({}) {|(pref, v), h|
  h[pref] = v.map {|pair| pair[1] }.sort.each_with_object({}).with_index(1) {|(year, h), i|
    h[year] = i
  }
}

addresses.each {|address|
  city_num = grouped[address[0]][address[1]]
  puts "#{format('%06d', address[0])}#{format('%06d', city_num)}"
}