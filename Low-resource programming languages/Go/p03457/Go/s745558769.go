package main

import (
	"fmt"
)

var N int
var x, y, t []int

var dx = []int{1, -1, 0, 0}
var dy = []int{0, 0, 1, -1}

func main() {
	fmt.Scanf("%d", &N)

	x = make([]int, N)
	y = make([]int, N)
	t = make([]int, N)

	for i := 0; i < N; i++ {
		fmt.Scanf("%d %d %d", &t[i], &x[i], &y[i])
	}

	if travel(0) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func travel(i int) bool {
	if i+1 < N {
		dt, dx, dy := t[i+1]-t[i], Abs(x[i]-x[i+1]), Abs(y[i]-x[i+1])
		if dt >= dx+dy && dt%2 == (dx+dy)%2 {
			return travel(i + 1)
		}
		return false
	}

	return t[0] >= x[0]+y[0] && t[0]%2 == (x[0]+y[0])%2
}

func Abs(x int) int {
	if x > 0 {
		return x
	}
	return -x
}
