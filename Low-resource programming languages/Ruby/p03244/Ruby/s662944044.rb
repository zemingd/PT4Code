n = gets.chomp.to_i

odd_max_x = -1
odd_second_x = -1
even_max_x = -1
even_second_x = -1
h_odd = { -1 => 0 }
h_even = { -1 => 0 }
gets.chomp.split(' ').map(&:to_i).each.with_index(0) do |x, i|
  even =  i.zero? || i.even?
  h = even ? h_even : h_odd
  if h.key?(x)
    h[x] += 1
  else
    h[x] = 1
  end

  if even
    if x != even_max_x
      if h[x] > h[even_max_x]
        even_second_x = even_max_x
        even_max_x = x
      elsif h[x] > h[even_second_x]
        even_second_x = x
      end
    end
  else
    if x != odd_max_x
      if h[x] > h[odd_max_x]
        odd_second_x = odd_max_x
        odd_max_x = x
      elsif h[x] > h[odd_second_x]
        odd_second_x = x
      end
    end
  end
  even
end

if even_max_x != odd_max_x
  puts n - h_even[even_max_x] - h_odd[odd_max_x]
  exit
end

def single?(h)
  h.keys.length == 2
end

if single?(h_even) && single?(h_odd)
  puts n / 2
elsif single?(h_even) && !single?(h_odd)
  puts (n / 2) - h_odd[odd_second_x]
elsif !single?(h_even) && single?(h_odd)
  puts (n / 2) - h_even[even_second_x]
else
  use_max_even = h_even[even_max_x] + h_odd[odd_second_x]
  use_max_odd = h_odd[odd_max_x] + h_even[even_second_x]

  puts n - [use_max_even, use_max_odd].max
end
