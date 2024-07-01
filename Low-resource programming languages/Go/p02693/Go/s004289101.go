package main

import "fmt"

func main() {
	var k, a, b int
	fmt.Scanf("%d", &k)
	fmt.Scanf("%d %d", &a, &b)

	for i := a; i <= b; i++ {
		if i%k == 0 {
			fmt.Println("OK")
			return
		}
	}

	fmt.Println("NG")
}
