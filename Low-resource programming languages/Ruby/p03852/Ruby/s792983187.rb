#!/usr/bin/env ruby
c = STDIN.readline().strip()
puts ['a', 'e', 'i', 'o', 'u'].include?(c) ? 'vowel' : 'consonant'
