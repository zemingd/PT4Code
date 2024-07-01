package main

import "fmt"

func main() {
	var n, m int
	fmt.Scanf("%d %d\n", &n, &m)

	max := m / n

	for i := max; i > 0; i-- {
		if m%i == 0 {
			fmt.Println(i)
			break
		}
	}
}
