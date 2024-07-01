package main

import "fmt"

func main() {
	var N, T, X, Y int
	fmt.Scan(&N)
	t := make([]int, N+1)
	x := make([]int, N+1)
	y := make([]int, N+1)
	for i := 1; i < N+1; i++ {
		fmt.Scan(&t[i], &x[i], &y[i])
	}
	for i := 1; i < N+1; i++ {
		T, X, Y = t[i-1], x[i-1], y[i-1]
     	if t[i]-T < abs(x[i],X) + abs(y[i],Y) || (t[i]-T-abs(x[i],X) + abs(y[i],Y)) % 2 == 1 {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}

func abs(a, b int)int {
  	if a >= b {
  		return a-b
    } else {
    	return b-a
    }
}