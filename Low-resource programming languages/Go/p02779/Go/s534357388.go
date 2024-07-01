package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	m := map[string]int{}
	for i := 0; i < n; i++ {
		var tmp string
		fmt.Scan(&tmp)
		_, exists := m[tmp]
		if exists {
			fmt.Println("No")
			return
		} else {
			m[tmp] = 1
		}
	}

	fmt.Println("Yes")
}
