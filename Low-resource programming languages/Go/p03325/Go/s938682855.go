package main

import (
	"fmt"
)

func main() {
	var n, huga, ans int
	a := []int{}
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		fmt.Scan(&huga)
		if huga%2 == 0 {
			a = append(a, huga)
		}
	}
	if len(a) == 0 {
		fmt.Println(ans)
	} else {
		for _, i := range a {
			for {
				if i%2 == 1 || i == 1 {
					break
				}
				i = i / 2

				ans += 1
			}
		}
		fmt.Println(ans)
	}
}
