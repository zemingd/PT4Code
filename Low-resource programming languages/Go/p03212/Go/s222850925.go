package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	sum := 0

	for i := 0; i <= n/1000; i++ {
		var flag3, flag5, flag7 int
		flagSatisfied := true
		tmp := i
		for tmp != 0 {
			switch tmp % 10 {
			case 3:
				flag3 = 1
			case 5:
				flag5 = 1
			case 7:
				flag7 = 1
			default:
				flagSatisfied = false
				break
			}
			tmp /= 10
		}

		if flagSatisfied == false {
			continue
		}

		if i == n/1000 {
			for j := n - (n % 1000); j <= n; j++ {
				var flag3_2, flag5_2, flag7_2 bool
				flagSatisfied_2 := true
				tmp2 := j
				for tmp2 != 0 {
					switch tmp2 % 10 {
					case 3:
						flag3_2 = true
					case 5:
						flag5_2 = true
					case 7:
						flag7_2 = true
					default:
						flagSatisfied_2 = false
						break
					}
					tmp2 /= 10
				}

				if flagSatisfied_2 == false {
					continue
				}

				if flag3_2 == true && flag5_2 == true && flag7_2 == true {
					sum++
				}
			}
			break
		}

		switch flag3 + flag5 + flag7 {
		case 1:
			sum += 12
		case 2:
			sum += 19
		case 3:
			sum += 27
		default:
			sum += 6
		}
	}

	fmt.Println(sum)
}
