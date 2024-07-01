def main
  num = 0
  ARGF.gets.chars.each do |s|
    if s == '+'
      num += 1
    elsif s == '-'
      num -= 1
    end
  end
  puts num
end

if __FILE__ == $0
  main
end
