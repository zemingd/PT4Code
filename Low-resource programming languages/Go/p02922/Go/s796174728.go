package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	var ans, plug int
	for i := 0; i <= 100; i++ {
		plug = 1 + (a-1)*i
		if b <= plug {
			ans = i
			break
		}
	}

	fmt.Println(ans)
}
