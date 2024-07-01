INPUT = gets.chomp.to_i
CHEK_NUMS = ["7", "5", "3"]

def count753number(str)
  return 0 if str.to_i > INPUT

  ret = CHEK_NUMS.all?{ |c| str.include? c } ? 1 : 0
  CHEK_NUMS.each do |c|
    ret += count753number(str + c)

  end

  ret
end

puts count753number "0"
