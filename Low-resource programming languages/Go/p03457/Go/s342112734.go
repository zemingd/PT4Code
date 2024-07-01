package main

import "fmt"

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

	if travel(0, 0, 0, 0) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func travel(i, ct, cx, cy int) bool {
	if i < N {
		ct++
		for j := 0; j < 4; j++ {
			nx, ny := cx+dx[j], cy+dy[j]

			if nx < 0 || ny < 0 {
				return false
			}

			if ct == t[i] {
				if nx == x[i] && ny == y[i] {
					if travel(i+1, ct, nx, ny) {
						return true
					}
				}
			} else {
				if travel(i, ct, nx, ny) {
					return true
				}
			}
		}
	}

	return i == N
}
