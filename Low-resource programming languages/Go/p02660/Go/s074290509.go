package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	var memo map[int]int
	memo = map[int]int{}
	sosu := true
	iti := false
	if N == 1 {
		iti = true
	}
	// fmt.Println(N)
	for i:=2; i * i <= N; i++ {
		if N % i == 0{
			target := i
			check := true
			for check {
				check = false
				for j, value := range memo {
					if target%j == 0 {
						target = target / j
						memo [j] = value + 1
						check = true
						break
					}
				}
			}
			if target != 1 {
				// fmt.Println(target)
				memo[target] = 1
				sosu = false
			}
			N = N/i
		}
	}
	target := N
	check := true
	for check {
		check = false
		for j, value := range memo {
			if target%j == 0 {
				target = target / j
				memo [j] = value + 1
				check = true
				break
			}
		}
		memo[target] = 1
	}
	if sosu {
		if iti {
			fmt.Println(0)
		} else {
			fmt.Println(1)
		}
	} else {
		sum := 0
		for _,value := range memo {
			count := value
			for i:=1; i<=value; i++ {
				if count-i >= 0 {
					count -= i
					sum += 1
				} else {
					break
				}
			}
		}
		fmt.Println(sum)
	}

}
