package main

import "fmt"

func main() {
	var a, b, c int
	ans := "No"
	fmt.Scanf("%d %d", &a, &b)
	for i := 0; i <= a; i++ {
		c = a - i
		if i*2+c*4 == b {
			ans = "Yes"
		}
	}
	fmt.Println(ans)
}
