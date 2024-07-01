package main

import (
	"fmt"
)

func main() {

	var X, Y int
	fmt.Scanf("%d %d", &X, &Y)

	flag := 0
	for i := 1; i <= X; i++ {
		j := X - i
		if Y == (2*i + 4*j) {
			flag = 1
		}
	}

	if flag == 1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
