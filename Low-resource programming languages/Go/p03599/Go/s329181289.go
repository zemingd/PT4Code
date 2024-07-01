package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const INF = (1 << 31) - 1

func main() {
	sc.Split(bufio.ScanWords)
	A := nextInt()
	B := nextInt()
	if A > B {
		swap(&A, &B)
	}
	C := nextInt()
	D := nextInt()
	if C > D {
		swap(&C, &D)
	}
	E := nextInt()
	F := nextInt()
	waters := map[int]bool{}
	sugers := map[int]bool{}
	for a := 0; a <= F; a += 100 * A {
		for b := 0; a+b <= F; b += 100 * B {
			waters[a+b] = true
		}
	}
	for c := 0; c <= F; c += C {
		for d := 0; c+d <= F; d += D {
			sugers[c+d] = true
		}
	}

	bestWater, bestSuger := A*100, 0
	for water, _ := range waters {
		for suger, _ := range sugers {
			total := water + suger
			bestTotal := bestWater + bestSuger
			if total <= F && (100+E)*suger <= total*E && total*bestSuger < bestTotal*suger {
				bestWater = water
				bestSuger = suger
			}
		}
	}
	fmt.Println(bestWater+bestSuger, bestSuger)
}

// -------- Library --------
var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	v, _ := strconv.Atoi(next())
	return v
}

func nextIntArray(size int) []int {
	res := make([]int, size)
	for i := 0; i < size; i++ {
		res[i] = nextInt()
	}
	return res
}

func min(a int, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}

func shift(p int) int {
	return 1 << uint(p)
}

func swap(a *int, b *int) {
	tmp := a
	a = b
	b = tmp
}
