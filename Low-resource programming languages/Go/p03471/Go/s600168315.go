package main

import (
	"fmt"
)

func main() {
	var N, Y int
	a, b, c := 0, 0, 0
	fmt.Scanf("%d %d", &N, &Y)
	tmp := Y
	for i := 0; 10000*i < Y; i++ {
		tmp = Y - 10000*i
		b = 0
		for ii := 0; 5000*ii < tmp; ii++ {
			c = (tmp - 5000*ii) / 1000
			b = ii
		}
		a = i
	}
	fmt.Printf("%d %d %d", a, b, c)
	if (a + b + c) == N {
		fmt.Printf("%d %d %d", a, b, c)
	} else {
		fmt.Println("-1 -1 -1")
	}
}
