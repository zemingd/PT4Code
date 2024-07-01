package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scanf("%d\n", &n)
	slice := make([][]int, n)

	for i := range slice {
		slice[i] = make([]int, 3)
		fmt.Scanf("%d %d %d\n", &slice[i][0], &slice[i][1], &slice[i][2])
	}

	flg := true

	t, x, y := 0, 0, 0
	for _, p := range slice {
		dt := p[0] - t
		dx := p[1] - x
		dy := p[2] - y
		dist := int(math.Abs(float64(dx)) + math.Abs(float64(dy)))
		if dist > dt {
			flg = false
			break
		} else {
			if (dt+dist)%2 == 1 {
				flg = false
				break
			}

		}
		t = p[0]
		x = p[1]
		y = p[2]
	}

	if flg {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
