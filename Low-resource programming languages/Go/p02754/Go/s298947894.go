package main

import (
	"fmt"
)

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)

	if a == 0 {
		fmt.Println(0)
		return
	}
  
	forward := n / (a + b) * a
	
	var back int
	if n%(a+b) <= a {
		back = n % (a + b) % a
	} else {
		back = a
	}
  
	fmt.Println(forward + back)
}
