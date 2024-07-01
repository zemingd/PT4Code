package main

import "fmt"

func main() {
	var a, b, k int64
	fmt.Scanf("%d %d %d", &a, &b, &k)

	for ; k > 0; k-- {
		if a > 0 {
			a--
		} else if b > 0 {
			b--
		}
	}
	fmt.Println(a, b)
}
