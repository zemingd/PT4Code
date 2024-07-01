package main

import "fmt"

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func check(time, distance int) bool {
	if time < distance || (distance-time)%2 != 0 {
		return false
	}
	return true
}

func main() {
	var n int
	fmt.Scan(&n)

	t := make([]int, n)
	x := make([]int, n)
	y := make([]int, n)
	for i := range t {
		fmt.Scan(&t[i], &x[i], &y[i])
	}

	ans := "Yes"
	distance := x[0] + y[0]
	time := t[0]
	if !check(time, distance) {
		ans = "No"
	}
	for i := 0; i < n-1; i++ {
		distance = abs(x[i+1]-x[i]) + abs(y[i+1]-y[i])
		time = t[i+1] - t[i]
		if !check(time, distance) {
			ans = "No"
			break
		}
	}
	fmt.Println(ans)
}
