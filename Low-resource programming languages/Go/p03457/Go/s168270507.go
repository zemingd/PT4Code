package main

import "fmt"

type Position struct {
	Time, X, Y int
}

func main() {
	var n int
	fmt.Scan(&n)

	schedule := make([]Position, n)
	for i := 0; i < n; i++ {
		var time, x, y int
		fmt.Scan(&time, &x, &y)
		schedule[i] = Position{Time: time, X: x, Y: y}
	}

	res := true
	position := Position{Time: 0, X: 0, Y: 0}

	for i := 0; i < len(schedule); i++ {
		destination := schedule[i]

		// 移動
		for j := position.Time + 1; j <= destination.Time; j++ {
			position.Time = j
			if position.X != destination.X {
				if position.X < destination.X {
					position.X++
				} else {
					position.X--
				}
			} else if position.Y != destination.Y {
				if position.Y < destination.Y {
					position.Y++
				} else {
					position.Y--
				}
			} else {
				position.X++
			}
		}

		if position.X != destination.X || position.Y != destination.Y {
			res = false
			break
		}
	}

	if res {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
