package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	if n > m {
		fmt.Println(0)
	}

	ans := 1
	for i := 2; i*i <= m/n; i++ {
		if m%i == 0 && i > ans {
			ans = i
		}
	}
	fmt.Println(ans)
}
