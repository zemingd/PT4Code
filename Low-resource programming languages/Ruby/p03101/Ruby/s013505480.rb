#!/usr/bin/ruby
#encoding: utf-8

H,W = gets.split.map(&:to_i) 
h,w = gets.split.map(&:to_i) 

puts H*W - h*W - H*w  + h*w
