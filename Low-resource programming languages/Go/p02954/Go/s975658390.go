package main

import "fmt"

func main() {
	var x string
	fmt.Scan(&x)

	rooms := make([]int, len(x))
	rooms[0] = 1
	for p := 1; p < len(rooms); p *= 2 {
		copy(rooms[p:], rooms[:p])
	}
	newrooms := make([]int, len(x))
	copy(newrooms, rooms)

	var c int
	if len(x)%2 == 0 {
		c = 3
	} else {
		c = 2
	}

	for t := 0; t < c; t++ {
		for i := 0; i < len(x); i++ {
			if rooms[i] != 0 {
				if x[i] == 'R' {
					newrooms[i+1] += rooms[i]
				} else {
					newrooms[i-1] += rooms[i]
				}
				newrooms[i] -= rooms[i]
			}
		}
		copy(rooms, newrooms)
	}
	fmt.Println(rooms)
}