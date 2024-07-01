package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	m := make(map[int]int)
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)

		m[tmp]++
	}

	ans := 0
	for _, v := range m {
		if v%2 != 0 {
			ans++
		}
	}

	fmt.Println(ans)
}
