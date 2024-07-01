package main

import "fmt"

func main() {
	var n string
	fmt.Scan(&n)

	sum := 0
	for i := 0; i < len(n); i++ {
		a := int(n[i] - '0')
		sum += a
	}
	if sum%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
