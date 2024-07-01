package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	if n%2 == 1 {
		fmt.Println(0)
		return
	}

	ans := 0
	n /= 2
	for n > 0 {
		ans += n / 5
		n /= 5
	}
	fmt.Println(ans)
}
