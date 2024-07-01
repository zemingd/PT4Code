package main

import (
	"fmt"
)

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func main() {
	var A1, A2, A3 int
	fmt.Scanf("%d%d%d", &A1, &A2, &A3)
	ans1 := abs(A2-A1) + abs(A3-A2)
	ans2 := abs(A3-A1) + abs(A2-A3)
	ans3 := abs(A1-A2) + abs(A3-A1)
	ans4 := abs(A3-A2) + abs(A1-A3)
	ans5 := abs(A1-A3) + abs(A2-A1)
	ans6 := abs(A2-A3) + abs(A3-A2)
	ans := ans1
	if ans2 < ans {
		ans = ans2
	}
	if ans3 < ans {
		ans = ans3
	}
	if ans4 < ans {
		ans = ans4
	}
	if ans5 < ans {
		ans = ans5
	}
	if ans6 < ans {
		ans = ans6
	}
	fmt.Printf("%d\n", ans)
}
