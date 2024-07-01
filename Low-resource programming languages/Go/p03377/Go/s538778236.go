// きりみんちゃんの配信からきました
package main

import (
	"fmt"
)

var a, b, x int

func main() {
	fmt.Scan(&a, &b, &x)
	if a <= x && x <= a+b {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
