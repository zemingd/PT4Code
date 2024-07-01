package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner((os.Stdin))

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	l := nextLine()
	i, e := strconv.Atoi(l)
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	D, G, p, c := nextInt(), nextInt(), []int{}, []int{}
	for i := 0; i < D; i++ {
		p = append(p, nextInt())
		c = append(c, nextInt())
	}

	fmt.Printf("%d\n", ABC104C(G, p, c))
}

// ABC104C ...
func ABC104C(G int, p, c []int) (res int) {
	res, _ = dfs(0, 0, 100, G, p, c)

	return
}

func dfs(ans, totalScore, nextScore, G int, p, c []int) (int, int) {
	if len(p) == 0 {
		return ans, totalScore
	}

	if totalScore > G {
		return ans, totalScore
	}

	min, score := math.MaxInt32, 0
	for i := 0; i <= p[0]; i++ {
		newTotalScore := totalScore + i*nextScore
		if i == p[0] {
			newTotalScore += c[0]
		}

		if newTotalScore >= G {
			if ans+i < min {
				min = ans + i
				score = newTotalScore
				break
			}
		} else {
			tmpans, tmpscore := dfs(ans+i, newTotalScore, nextScore+100, G, p[1:], c[1:])
			if tmpscore >= G && tmpans < min {
				min = tmpans
				score = tmpscore
			}
		}
	}

	return min, score
}
