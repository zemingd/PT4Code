a, b, c, d, e, f = gets.split.map(&:to_i)

$water_a = a*100
$water_b = b*100
$suger_a = c
$suger_b = d
$max_suger_per = e.to_f / 100
$capacity      = f

$best_pattern   = {:all => 0, :suger => 0}
$best_suger_per = 0
def solve(total_all, total_suger)
  if total_all > $capacity
    return
  end

  new_suger_per = (total_suger.to_f / total_all.to_f)
  if new_suger_per > $best_suger_per
    $best_pattern[:all]   = total_all
    $best_pattern[:suger] = total_suger
    $best_suger_per       = new_suger_per
  end

  if total_all+$water_b <= $capacity
    solve(total_all+$water_b, total_suger)
  end
  if total_all+$water_a <= $capacity
    solve(total_all+$water_a, total_suger)
  end
  if total_all+$suger_b <= $capacity and (total_suger+$suger_b).to_f / (total_all+$suger_b).to_f < $max_suger_per
    solve(total_all+$suger_b, total_suger+$suger_b)
  end
  if total_all+$suger_a <= $capacity and (total_suger+$suger_a).to_f / (total_all+$suger_a).to_f < $max_suger_per
    solve(total_all+$suger_a, total_suger+$suger_a)
  end
end

solve(0, 0)
puts "#{$best_pattern[:all]} #{$best_pattern[:suger]}"
