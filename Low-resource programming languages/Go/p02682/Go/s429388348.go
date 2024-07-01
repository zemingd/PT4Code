package main

import "fmt"

func main() {
	var a, b, c, k int
	fmt.Scanf("%d %d %d %d", &a, &b, &c, &k)

	if a > k {
		fmt.Println(1 * a)
	} else if a == k {
		fmt.Println(1 * a)
	} else if a+b > k {
		fmt.Println(1 * a)
	} else if a+b == k {
		fmt.Println(1 * a)
	} else {
		r := k - (a + b)
		fmt.Println((1 * a) - (r * 1))
	}
}
