@n = gets.chomp.to_i
@numbers = gets.chomp.split(' ').map(&:to_i)
@output = 'No'

@zero_one = []

@numbers.each do |v|
  @zero_one << v % 2
end


def all_even?
  @zero_one.uniq == [0]
end

def even_cnt
  @zero_one.select{|k| k == 0}.size
end

def odd_cnt
  @zero_one.select{|k| k == 1}.size
end

if all_even?
  @output = 'Yes'
else
  if even_cnt * 2 == odd_cnt
    @output = 'Yes'
  end
end

print @output