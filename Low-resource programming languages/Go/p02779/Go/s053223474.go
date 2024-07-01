package main

import (
	"fmt"
)

func main() {

	var a, n, ans int
	huga := []int{}
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		if len(huga) == 0 {
			huga = append(huga, a)
		} else if ans != 0 {
			for _, v := range huga {
				if v == a || ans != 0 {
					ans += 1
					break
				}

			}
			huga = append(huga, a)
		}

	}
	if ans == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}

}
