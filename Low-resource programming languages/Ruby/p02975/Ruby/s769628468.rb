@n = gets.chomp.to_i
@numbers = gets.chomp.split(' ').map(&:to_i)
@output = 'No'

@bit_array = []

@digit = @numbers.max.to_s(2).size

@numbers.each do |v|
  bit = v.to_s(2)
  bit_size = bit.size
  offset = @digit - bit_size
  new_bit_str = "0" * offset + bit
  @bit_array << new_bit_str
end

# @return Bool
def ok_array?(a)
  return true if a.uniq == ["0"]
  return true if (a.select{|k| k == "0"}.size*2) == (a.select{|k| k == "1"}.size*1)
  return false
end

@flag_array = []

def check(a)
  1.upto(@digit) do |d|
    target_digit_arr = @bit_array.collect{|b| b[d-1]}
    @flag_array << ok_array?(target_digit_arr)
  end
end
check(@bit_array)

if @flag_array.uniq == [true]
  print 'Yes'
else
  print 'No'
end