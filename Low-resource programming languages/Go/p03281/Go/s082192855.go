package main

import "fmt"

func main() {
	var n, cnt int
	fmt.Scan(&n)
	for num := 1; num <= n; num += 2 {
		num_divisors := 0
		for i := 1; i <= num; i++ {
			if num%i == 0 {
				num_divisors++
			}
		}
		if num_divisors == 8 {
			cnt++
		}
	}
	fmt.Println(cnt)
}
