package main

import (
	"fmt"
)

func main() {
	//存在するものが1になる
	a := make([]int, 100)

	var x, n int
	fmt.Scanf("%d", &x)
	fmt.Scanf("%d", &n)

	var p int
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &p)
		a[p - 1] = 1
	}

	if n == 0 {
		fmt.Println(x)
	}else{
		i := 0
		for {
			c := x - 1 - i
			if c > -1 && a[c] == 0 {
				fmt.Println(c + 1)
				break;
			}

			c = x - 1 + i
			if c < 100 && a[c] == 0 {
				fmt.Println(c + 1)
				break;
			}

			i = i + 1
		}
	}
}
