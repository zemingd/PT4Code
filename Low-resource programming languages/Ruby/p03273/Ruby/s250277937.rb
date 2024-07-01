# frozen_string_literal: true

h, _ = gets.split.map(&:to_i)
a = Array.new(h) { gets.chomp.chars }

a.delete_if { |row| row.uniq == ['.'] }
a = a.transpose
a.delete_if { |col| col.uniq == ['.'] }

a.transpose.each { |e| puts e.join('') }