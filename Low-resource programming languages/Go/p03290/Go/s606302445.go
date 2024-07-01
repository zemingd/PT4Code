// ProblemURL : https://atcoder.jp/contests/abc104/tasks/abc104_c
// ---------------------------------------------
package main

import "fmt"

var inf = 1 << 60

func smaller(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var n, targetScore int
	fmt.Scan(&n, &targetScore)
	type problem struct {
		point int
		count int
		bonus int
	}
	problems := make([]problem, n)
	for i := 0; i < n; i++ {
		var p, c int
		fmt.Scan(&p, &c)
		problems[i] = problem{
			point: (i + 1) * 100,
			count: p,
			bonus: c,
		}
	}

	ctSolvedMin := inf
	for i := 0; i < (1 << uint(n)); i++ {
		ctSolved := 0
		score := 0
		for j := 0; j < n; j++ {
			if i>>uint(j)&1 == 1 {
				ctSolved += problems[j].count
				score += problems[j].point * problems[j].count
				score += problems[j].bonus
			}
		}

		if score >= targetScore {
			ctSolvedMin = smaller(ctSolvedMin, ctSolved)
		} else {
			for j := n - 1; j >= 0; j-- {
				if i>>uint(j)&1 == 1 {
					continue
				}

				for h := 0; h < problems[j].count-1; h++ {
					ctSolved++
					score += problems[j].point
					if score >= targetScore {
						break
					}
				}
				if score >= targetScore {
					break
				}
			}

			if score >= targetScore {
				ctSolvedMin = smaller(ctSolvedMin, ctSolved)
			}
		}
	}
	fmt.Println(ctSolvedMin)
}
