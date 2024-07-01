package main

import (
	"bufio"
	"fmt"
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
	res = 1000
	for bit := 0; bit < (1 << uint(len(c))); bit++ {
		ans, score, solved := 0, 0, map[int]bool{}
		for i := 0; i < len(c); i++ {
			if bit>>uint(i)&1 == 1 {
				ans += p[i]
				score += c[i] + (i+1)*100*p[i]
				solved[i] = true
			}
		}

		if score < G {
			for i := len(p) - 1; i >= 0; i-- {
				_, ok := solved[i]
				if !ok {
					rest := G - score
					if rest > (i+1)*100*(p[i]-1) {
						ans += p[i] - 1
						score += (i + 1) * 100 * (p[i] - 1)
					} else {
						solvedhrere := rest / ((i + 1) * 100)
						ans += solvedhrere
						score += (i + 1) * 100 * solvedhrere
					}
				}
			}
		}

		if score >= G && ans < res {
			res = ans
		}
	}
  
  	return
}
