#!/usr/bin/ruby

N = gets.chomp.to_i

$table = [
[],
[],
[],
[],
[],
[],
[],
[],
[],
[],
[],
[],
[],
[],
[],
[],
]

1.upto(N){|i|
  a_i = gets.chomp.to_i
  1.upto(a_i){|j|
    x_i_j,  y_i_j = gets.chomp.split(" ").map(&:to_i)
    $table[i][j] = [x_i_j, y_i_j]
    puts "table[#{i}][#{j}] = (#{x_i_j}, #{y_i_j})"
  }
}

# people = [dummy, 1,0,0...]
def isGood( people )
  i = 1;
  while i < people.length
    if people[i] == 1
      #puts"people[#{i}] = 1"
      1.upto($table[i].length-1){|j|
        #puts "#{i}, #{j}"
        t = $table[i][j]
        #puts "table[#{i}]= #{t.class}"
        #puts t[0]
        x, y = t
        #puts "x, people[x],y = #{x}, #{people[x]}, #{y}"
        return false if people[x] != y
      }

    end
    i+=1
  end

  return true
end

(2**N - 1).downto(0){|i|
  people = i.to_s(2).split("").map(&:to_i)
  while people.length != N
    people.unshift(0)
  end
  people.unshift("d")
  if true == isGood(people)
      puts people.count{|e| e == 1}
      exit
  end
}

puts 0
