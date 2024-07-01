package main

import "fmt"

func main() {
	var n int64
	fmt.Scanf("%d\n", &n)

	sum := int64(0)
	for i := int64(1); i < n; i++ {
		sum += i
	}

	fmt.Println(sum)
}
