package main

import (
	"fmt"
)

type difficulty struct {
	score, num, bonus int
}

func power2(n int) int {
	if n == 0 {
		return 1
	} else if n == 1 {
		return 2
	} else {
		temp := power2(n / 2)
		if n%2 == 0 {
			return temp * temp
		} else {
			return temp * temp * 2
		}
	}
}

func isOn(n, i int) bool {
	return (n>>uint(i))%2 == 1
}

func perfectScore(d difficulty) int {
	return d.score*d.num + d.bonus
}

func main() {
	var d, g int
	fmt.Scanln(&d, &g)
	difficulties := make([]difficulty, d)
	for j := 0; j < d; j++ {
		difficulties[j].score = (j + 1) * 100
		fmt.Scanln(&difficulties[j].num, &difficulties[j].bonus)
	}
	ans := 1000
	for i := 0; i < power2(d); i++ {
		score := 0
		solved := 0
		for j, d := range difficulties {
			if isOn(i, j) {
				score += perfectScore(d)
				solved += d.num
			}
		}
		if score >= g {
			if ans > solved {
				ans = solved
			}
		} else {
			for j, d := range difficulties {
				if !isOn(i, j) {
					requiredScore := g - score
					requiredNum := (requiredScore + d.score - 1) / d.score
					if d.num >= requiredNum {
						if ans > solved+requiredNum {
							ans = solved + requiredNum
						}
					}
				}
			}
		}
	}
	fmt.Println(ans)
}
