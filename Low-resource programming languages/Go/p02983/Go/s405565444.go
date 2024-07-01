package main

import "fmt"

func main() {
	var l, r int
	fmt.Scan(&l, &r)

	var min int
	ans := 9999

	if l%2019 == 0 || r%2019 == 0 {
		ans = 0
	} else {
		for i := l; i < r; i++ {
			for j := i + 1; j <= r; j++ {
				min = i * j % 2019
				if min < ans {
					ans = min
				}
			}
		}
	}

	fmt.Println(ans)
}
