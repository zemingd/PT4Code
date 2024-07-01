def change(c)
  case c
  when '1'
    '1'
  when '2'
    '22'
  when '3'
    '333'
  when '4'
    '4444'
  when '5'
    '55555'
  when '6'
    '666666'
  when '7'
    '7777777'
  when '8'
    '88888888'
  when '9'
    '999999999'
  end
end

s = gets.chomp
k = gets.chomp.split(' ').map(&:to_i)[0]
if s.length == 1
  puts s[0]
else
  5000_000_000_000_000.times do
    ne = ''
    first = ''
    second = ''
    fin = true
    s.split('').each_with_index do |c, i|
      first = c if i.zero?
      second = c if first == '1' && second == '' && c != '1'
      fin = false if first == '1' && second != '' && second != c
      fin = false if first != '1' && first != c
      break if i > k
      ne += change(c)
    end
    s = ne
    break if fin 
  end
  puts s[k-1]
end