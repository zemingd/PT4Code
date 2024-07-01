package main

import (
	"fmt"
)

func main() {
	var d, g int
	fmt.Scanf("%d%d", &d, &g)

	p := make([]int, d)
	c := make([]int, d)
	for i, _ := range p {
		fmt.Scanf("%d%d", &p[i], &c[i])
	}

	ans := 1000000000
	for mask := 0; mask < (1 << uint(d)); mask++ {
		score := 0
		count := 0
		mid := 0

		for i := 0; i < d; i++ {
			if mask&(1<<uint(i)) > 0 {
				score += (i+1)*100*p[i] + c[i]
				count += p[i]
			} else {
				mid = i
			}
		}

		if g > score+(mid+1)*100*(p[mid]-1) {
			continue
		}

		for g > score {
			score += (mid + 1) * 100
			count++
		}

		if ans > count {
			ans = count
		}
	}

	fmt.Println(ans)
}
