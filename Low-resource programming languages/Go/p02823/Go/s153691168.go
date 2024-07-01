package main

import "fmt"

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)

	var ans int

	var tmp int

	tmp = a - b
	if tmp < 0 {
		tmp *= -1
		a = b
		b -= tmp
	}

	tmp2 := b
	if n-a+1 < tmp2 {
		tmp2 = n - a + 1
	}

	if tmp%2 == 1 {
		ans = tmp/2 + tmp2
	} else {
		ans = tmp / 2
	}
	fmt.Println(ans)
}
