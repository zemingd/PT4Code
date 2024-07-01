package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&as[i])
	}

	max := 0
	for i := 0; i < n; i++ {
		if as[i] > max {
			max = as[i]
		}
	}

	var ans, chance int
	for i := max; i > 0; i-- {
		if ans != 0 {
			break
		}
		ans = i
		chance = 1
		for _, v := range as {
			if v%i != 0 {
				chance--
			}
			if chance < 0 {
				ans = 0
				break
			}
		}
	}
	fmt.Println(ans)
}
