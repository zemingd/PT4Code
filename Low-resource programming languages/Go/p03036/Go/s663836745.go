package main

import "fmt"

func main() {
	var r, D, x2000 int

	list := make([]int, 11)

	fmt.Scanf("%d %d %d", &r, &D, &x2000)

	list[0] = x2000

	for i := 1; i <= 10; i++ {
		list[i] = r*list[i-1] - D
		fmt.Println(list[i])
	}
}
