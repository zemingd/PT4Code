package main

import (
	"fmt"
)


func main() {
	var r,d,x int
	fmt.Scan(&r, &d, &x)

	ans := 0
	for i := 0; i < 10; i++ {
		if i == 0 {
			ans = r*x-d
			fmt.Println(ans)
			continue
		}

		ans = r*ans-d
		fmt.Println(ans)
	}

}

