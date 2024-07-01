#! /usr/bin/env ruby
begin
N, K = gets.chop.split.map(&:to_i)
H = gets.chop.split.map(&:to_i).unshift(0)
K.times do
  H.push(0)
end

TotalCosts = []

@deep = 0

def jump(from, step, paid_cost)
  now = from + step
  paid_cost += (H[from] - H[now]).abs

  if now == N
    TotalCosts << paid_cost
  elsif now < N
    K.times do |next_step|
      jump(now, next_step + 1, paid_cost)
    end
  end
end

K.times do |step|
  jump(1, step + 1 , 0)
end

p TotalCosts.min
rescue SystemStackError => ex
  p 111
end