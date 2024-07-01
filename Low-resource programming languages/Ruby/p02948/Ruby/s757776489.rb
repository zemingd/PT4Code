#!/usr/bin/env ruby
# coding: utf-8

class Integer
  def bit_length
    Math.log2(self < 0 ? -self : self+1).ceil
  end
end

class PrioQ

  def initialize(base = 0)
    @table = []
    @base = base
    @size = 0
  end

  attr_reader :size

  def add(prio, val)
    @size += 1
    bitlen = prio.bit_length
    if bitlen < 2
      if @table[bitlen] == nil
        @table[bitlen] = []
      end
      @table[bitlen] << val
    else
      base = 2 ** (bitlen - 1)
      if @table[bitlen] == nil
        @table[bitlen] = PrioQ.new(base)
      end
      @table[bitlen].add(prio - base, val)
    end
  end

  def to_s
    s = @table.map(&:to_s).join(' ')
    s[0,1] = ""
    s
  end

  def pop
    if @size > 0
      @size -= 1
    end
    while @table.size > 0
      if @table.last
        x = @table.last.pop
        return x if x
      end
      @table.pop
    end
    nil
  end
end

n, m = ARGF.gets.split.map(&:to_i)
tbl = Array.new(m+1) { [] }
pq = PrioQ.new

n.times do
  a, b = ARGF.gets.split.map(&:to_i)
  tbl[a] << [a, b] if a <= m
end

# 残り日数の少ないものから順に

sum = (m+1).times.reduce(0) do |s, day|
  tbl[day].each {|job| pq.add(job[1], job[1])}
  job = pq.pop
  s + (job || 0)
end

puts sum
