#!/usr/bin/env ruby
# coding: utf-8

n, k = ARGF.gets.split.map(&:to_i)
h = ARGF.gets.split.map(&:to_i).sort
puts k < h.size ? h[0...(h.size-k)].inject{|r,i| r+i} : 0
