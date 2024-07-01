#! /usr/bin/env ruby

if !ENV['RUBY_THREAD_VM_STACK_SIZE']
    #Rubyパスを取得するには、rbconfigかrubygemsを使う。AtCoderでは--disable-gemsされているので、require 'rubygems'は必須である。
    #require 'rbconfig';RUBY=File.join(RbConfig::CONFIG['bindir'],RbConfig::CONFIG['ruby_install_name'])
    require 'rubygems'
    RUBY=Gem.ruby
    exec({'RUBY_THREAD_VM_STACK_SIZE'=>'100000000'},RUBY,$0) #100MB
end

@N = gets.chop.to_i
@h = gets.chop.split(' ').map(&:to_i).unshift(0).push(0)

@total_costs = []

@min_costs = Array.new(@N+2, 1<<100)

def jump(from, step, paid_cost)
  now = from + step
  paid_cost += (@h[from] - @h[now]).abs

  return if paid_cost > @min_costs[now]
  @min_costs[now] + paid_cost

  if now == @N
    @total_costs << paid_cost
  elsif now < @N
    jump(now, 1, paid_cost)
    jump(now, 2, paid_cost)
  end
end

jump(1, 1, 0)
jump(1, 2, 0)

p @total_costs.min