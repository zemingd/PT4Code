// ABC086C - Traveling
package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	nowt, nowx, nowy := 0, 0, 0
	txy := make([]int, 3)
	flag := true

	for i := 0; i < n; i++ {
		for j := 0; j < 3; j++ {
			fmt.Scan(&txy[j])
		}
		dt := txy[0] - nowt
		dx := int(math.Abs(float64(txy[1] - nowx)))
		dy := int(math.Abs(float64(txy[2] - nowy)))

		if dt < dx+dy || dt%2 != (dx+dy)%2 {
			flag = false
			break
		}
	}

	if flag {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
