package main

import (
	"fmt"
)

func main() {
	line := ""
	var A, B, C, D int
	fmt.Scan(&line)
	fmt.Sscanf(line, "%1d%1d%1d%1d", &A, &B, &C, &D)
	for i := 0; i < 8; i++ {
		x := A
		ans := fmt.Sprintf("%d", A)

		if (i & 1) > 0 {
			x += B
			ans = fmt.Sprintf("%s+%d", ans, B)
		} else {
			x -= B
			ans = fmt.Sprintf("%s-%d", ans, B)
		}

		if (i & 2) > 0 {
			x += C
			ans = fmt.Sprintf("%s+%d", ans, C)
		} else {
			x -= C
			ans = fmt.Sprintf("%s-%d", ans, C)
		}

		if (i & 4) > 0 {
			x += D
			ans = fmt.Sprintf("%s+%d=7", ans, D)
		} else {
			x -= D
			ans = fmt.Sprintf("%s-%d=7", ans, D)
		}

		if x == 7 {
			fmt.Println(ans)
			break
		}
	}
}
