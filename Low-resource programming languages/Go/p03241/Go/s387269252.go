package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	if n > m {
		fmt.Println(0)
	} else if n == 1 {
		fmt.Println(m)
	}

	ans := 1
	for i := 2; i <= m/n; i++ {
		if m%i == 0 && i > ans {
			ans = i
		}
	}
	fmt.Println(ans)
}
