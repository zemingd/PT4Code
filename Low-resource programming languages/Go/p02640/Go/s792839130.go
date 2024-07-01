package main

import "fmt"

func main() {
	var x, y int
	fmt.Scanf("%d", &x)
	fmt.Scanf("%d", &y)

	var answer bool
	for i := 0; i < x; i++ {
		tsuru := i
		kame := x - i

		if tsuru*4+kame*2 == y {
			answer = true
		}
	}

	if answer == true {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
