#!/usr/bin/env ruby

A,B=gets.split.map &:to_i
X = [25*A, 20*B].max
p (A != X/25 || B != X/20) ? -1 : X/2
