package main

import "fmt"

func main() {
	var n int64
	fmt.Scanln(&n)

	if n%2 == 1 {
		fmt.Println(0)
		return
	}

	ans := int64(0)
	m := n / 2
	for m > 0 {
		m /= 5
		ans += m
	}

	fmt.Println(ans)
}
