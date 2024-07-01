package main

import (
	"fmt"
)

func main() {
	var n, t, tt, x, tx, y, ty int
	res := true
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		fmt.Scan(&tt, &tx, &ty)
		for tt != t {
			if x < tx {
				x++
			} else if x > tx {
				x--
			} else if y < ty {
				y++
			} else {
				y--
			}
			t++
		}
		if !(tx == x && ty == y) {
			res = false
		}
	}

	if res {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
