#!/usr/bin/env ruby
i = STDIN.readline.to_i
puts i.to_s.gsub('1', 'a').gsub('9', '1').gsub('a', '9').to_i