package main

import "fmt"

type info struct {
	x, y, h int
}

func main() {
	var n int
	fmt.Scan(&n)
	s := make([]info, n)
	for i := range s {
		fmt.Scan(&s[i].x)
		fmt.Scan(&s[i].y)
		fmt.Scan(&s[i].h)
	}

	for cy := 0; cy <= 100; cy++ {
		flagbreak := false
		for cx := 0; cx <= 100; cx++ {
			toph := -1
			for _, elem := range s {
				tmph := elem.h + abs(elem.x-cx) + abs(elem.y-cy)
				if toph == -1 {
					toph = tmph
				}
				if toph != tmph {
					toph = -2
					break
				}

			}
			switch toph {
			case -2:
				continue
			default:
				fmt.Println(cx, cy, toph)
				flagbreak = true
				break
			}
		}
		if flagbreak == true {
			break
		}
	}

}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
