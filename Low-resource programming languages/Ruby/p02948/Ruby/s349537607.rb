#!/usr/bin/env ruby

class Integer
  def bit_length
    Math.log2(self < 0 ? -self : self+1).ceil
  end
end

class PrioQ

  def initialize(base = 0)
    @table = []
    @base = base
  end

  def add(prio, val)
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
    while @table.size > 2
      if @table.last
        x = @table.last.pop
        return x if x
      end
      @table.pop
    end
    @table.pop
  end
end

n, m = ARGF.gets.split.map(&:to_i)
pq = PrioQ.new

n.times do
  a, b = ARGF.gets.split.map(&:to_i)
  pq.add(b, [a, b])
end

puts "pq = #{pq}"

class Calendar
  @size
  @cal
  def initialize(size)
    @size = size
    @cal = Array.new(size+1) { 0 }
  end
  def insert(a, b)
    (0..(@size-a)).to_a.reverse.each do |d|
      if @cal[d] == 0
        @cal[d] = b
        return
      end
    end
  end

  def sum
    @cal.reduce(0) {|s,b| s+b}
  end

  def to_s
    @cal.join(' ')
  end
end

cal = Calendar.new(m)

while jobs = pq.pop
  puts "jobs = #{jobs}"
  jobs.sort {|i,j| j[0] - i[0]}.reverse.each do |job|
    puts "job = #{job}"
    cal.insert(*job)
  end
end

puts "cal = #{cal}"

puts cal.sum
