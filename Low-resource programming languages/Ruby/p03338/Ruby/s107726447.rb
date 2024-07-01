length = gets.chomp
str = gets.chomp
splitted_str = str.split("")

max_count = (0..str.length).map {|num|
  ary_a = splitted_str.take(num)
  ary_b = splitted_str.drop(num)
  ary_a & ary_b
}.max_by {|ary| ary.length}.count


p max_count