n,m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

def apply_ticket(prices)
  max = prices.max
  return prices if max == 0 

  max_index = prices.index(max)
  prices[max_index] = (max / 2).floor
  return prices
end

def apply_ticket_fibo(ticket_num, prices)
end

def calc(num, ticket_num, prices)
  while ticket_num > 0
     prices = apply_ticket(prices)
     ticket_num -= 1
  end
  return prices.inject(:+)
end

puts calc(n, m, a)