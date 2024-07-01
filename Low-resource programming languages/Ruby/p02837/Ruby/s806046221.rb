#!/usr/bin/env ruby
# coding: utf-8

class Man
  @@db = []
  def self.db
    @@db
  end

  def initialize(i)
    @id = i
    @@db[i] = self
    @log = ARGF.gets.to_i.times.map do
      x, y = ARGF.gets.split.map(&:to_i)
      [x-1, y==1]
    end
    @check = nil
    @honor = nil
  end

  attr_reader :id, :log
  attr_accessor :check, :honor

  def self.count
    @@db.map {|p| p.ok }.inject(:+)
  end

  def ok
    $stderr.puts "XX check=#{self.honor}"
    return 0 if self.honor == false
    queue = [self]
    while man = queue.shift
      man.log.each do |log|
        $stderr.puts "XX check #{man.id}: #{log}"
        peer = Man.db[log[0]]
        if log[1]
          if peer.honor == false
            self.clear
            self.check = false
            self.honor = false
            $stderr.puts "XX peer NG1 #{[peer]}"
            return 0
          end
          if peer.honor == nil
            peer.check = true
            peer.honor = true
            queue.push(peer)
          end
        else
          if peer.honor == true
            self.clear
            self.check = false
            self.honor = false
            $stderr.puts "XX peer NG2 #{[peer]}"
            return 0
          end
          if peer.honor == nil
            peer.check = true
            peer.honor = false
          end
        end
        $stderr.puts "XX peer #{[peer]}"
      end
    end
    $stderr.puts "XX check #{Man.db}"
    reset
    $stderr.puts "XX check #{Man.db}"
    return 1
  end

  def clear
    @@db.each do |man|
      if man.check
        man.check = nil
        man.honor = nil
      end
    end
  end

  def reset
    @@db.each do |man|
      man.check = nil
    end
  end
end

ARGF.gets.to_i.times.each do |i|
  Man.new(i)
end

puts Man.count
