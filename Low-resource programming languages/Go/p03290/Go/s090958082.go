package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

type quiz struct {
	point, p, c int
}

func intMin(x, y int) int {
	return int(math.Min(float64(x), float64(y)))
}

func main() {
	sc.Split(bufio.ScanWords)

	D, G := scanInt(), scanInt()
	L := make([]quiz, D)
	for i := 0; i < D; i++ {
		L[i].point, L[i].p, L[i].c = 100*(i+1), scanInt(), scanInt()
	}

	ans := 1000
	for i := 0; i < (1 << D); i++ {
		tmp := 0
		sum := 0
		for j := 0; j < D; j++ {
			if i&(1<<j) > 0 {
				sum += L[j].point*L[j].p + L[j].c
				tmp += L[j].p
			}
		}

		if sum >= G {
			ans = intMin(ans, tmp)
			continue
		}

		for j := D - 1; j >= 0; j-- {
			if i&(1<<j) == 0 {
				qNum := (G-sum)/L[j].point + intMin((G-sum)%L[j].point, 1)
				if qNum >= L[j].p {
					continue
				} else {
					tmp += qNum
					ans = intMin(ans, tmp)
					break
				}
			}
		}
	}
	fmt.Println(ans)
}
