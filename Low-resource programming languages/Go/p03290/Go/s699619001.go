package main

import "fmt"

type problem struct {
	number, bonus int
}

func min(a, b int) int {
	if a >= b {
		return b
	}
	return a
}

func main() {
	var D, G int
	fmt.Scan(&D, &G)
	problems := make([]problem, D)
	for i := range problems {
		fmt.Scan(&problems[i].number)
		fmt.Scan(&problems[i].bonus)
	}
	// fmt.Println("D", D, "G", G, "problems", problems)

	ans := 10000
	for bit := 0; bit < (1 << uint(D)); bit++ {
		score := 0
		solved := 0
		ok := false
		for j := 0; j < D; j++ {
			if bit&(1<<uint(j)) != 0 {
				score += (j+1)*100*problems[j].number + problems[j].bonus
				solved += problems[j].number
			}
		}
		if score < G {
			var j int
			for j = D - 1; j >= 0; j-- {
				if bit&(1<<uint(j)) == 0 {
					break
				}
			}
			for k := 0; k < problems[j].number; k++ {
				score += (j + 1) * 100
				solved++
				if score >= G {
					ok = true
					break
				}
			}
			if !ok {
				score += problems[j].bonus
				if score >= G {
					ok = true
				}
			}
		} else {
			ok = true
		}
		if ok {
			ans = min(ans, solved)
		}
	}
	fmt.Println(ans)
}
