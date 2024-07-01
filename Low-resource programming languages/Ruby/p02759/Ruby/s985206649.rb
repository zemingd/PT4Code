#!/usr/bin/env ruby

equals, remainder = gets.chomp.to_i.divmod(2)
puts remainder == 0 ? equals : equals + 1
