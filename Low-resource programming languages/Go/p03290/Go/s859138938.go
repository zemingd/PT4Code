package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type ProblemGroup struct {
	point     int
	nProblems int
	compBonus int
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	nGroups := scanInt(sc)
	goal := scanInt(sc)

	groups := make([]ProblemGroup, nGroups)
	for i := 0; i < nGroups; i++ {
		groups[i] = ProblemGroup{
			point:     (i + 1) * 100,
			nProblems: scanInt(sc),
			compBonus: scanInt(sc),
		}
	}

	// コンプリートするグループの組み合わせ数。
	nPatterns := 1 << uint(nGroups)

	minSolves := 10 * 100
	for p := 0; p < nPatterns; p++ {
		maxIncompIdx := -1
		score := 0
		nSolves := 0
		for i := nGroups - 1; i >= 0; i-- {
			isComp := (p >> uint(i) & 1) == 1
			g := groups[i]
			if isComp {
				score += g.point*g.nProblems + g.compBonus
				nSolves += g.nProblems
				if score >= goal {
					break
				}
			} else if maxIncompIdx < 0 {
				maxIncompIdx = i
			}
		}

		if score < goal && maxIncompIdx >= 0 {
			for i := maxIncompIdx; i >= 0; i-- {
				isComp := (p >> uint(i) & 1) == 1
				if isComp {
					continue
				}

				g := groups[i]
				n := (goal - score) / g.point
				if n > g.nProblems-1 {
					n = g.nProblems - 1
				}
				score += g.point * n
				nSolves += n

				if score >= goal {
					break
				}
			}
		}

		if score >= goal && nSolves < minSolves {
			minSolves = nSolves
		}
	}

	fmt.Println(minSolves)
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}
