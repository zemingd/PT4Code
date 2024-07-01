package main

import (
	"fmt"
)

func main() {
	var input string
	fmt.Scan(&input)

	v := make([]int, len(input))
	for i, r := range input {
		v[i] = int(r - '0')
	}

	n := 3
	for bit := 0; bit < (1 << uint(n)); bit++ {
		ans := v[0]
		ansStr := fmt.Sprint(v[0])
		for i := 0; i < n; i++ {
			if bit&(1<<uint(i)) == (1 << uint(i)) {
				ans += v[i+1]
				ansStr = fmt.Sprintf("%s+%d", ansStr, v[i+1])
			} else {
				ans -= v[i+1]
				ansStr = fmt.Sprintf("%s-%d", ansStr, v[i+1])
			}
		}
		if ans == 7 {
			ansStr = fmt.Sprintf("%s=%d", ansStr, ans)
			fmt.Println(ansStr)
			return
		}
	}
}
