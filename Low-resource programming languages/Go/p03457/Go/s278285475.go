package main

import "fmt"

type plan struct {
	T int
	X int
	Y int
}

func main() {
	n := 0
	fmt.Scan(&n)

	plans := make([]plan, n)
	for i := range plans {
		fmt.Scan(&plans[i].T, &plans[i].X, &plans[i].Y)
	}

	for _, p := range plans {
		if p.T%2 != (p.X+p.Y)%2 || p.T < (p.X+p.Y) {
			fmt.Println("No")
			return
		}
	}

	fmt.Println("Yes")
}
