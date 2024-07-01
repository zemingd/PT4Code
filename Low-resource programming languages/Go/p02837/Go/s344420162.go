package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func Pow(x int, y int) int {
	return int(math.Pow(float64(x), float64(y)))
}

func main() {
	n := nextInt()
	m := make([][]int, n + 1)
	for i := 0; i<n+1; i++ {
		m[i] = make([]int, n + 1)
		for j := 0; j<n+1; j++ {
			m[i][j] = -1
		}
	}

	for i := 0; i < n; i++ {
		a := nextInt()
		for j := 0; j < a; j++ {
			x := nextInt()
			y := nextInt()

			m[i+1][x] = y
		}
	}

	max := 0
	for i := 0; i < Pow(2, n); i++ {
		x := fmt.Sprintf("%0*s", n, strconv.FormatInt(int64(i), 2))

		if func() bool {
			for i, y := range x {
				for j := 0; j < n; j++ {
					if m[i+1][j+1] == -1 {
						continue
					}

					if y == '1' && strconv.Itoa(m[i+1][j+1]) != string(x[j]) {
						return false
					}
				}
			}
			return true
		}() {
			count := strings.Count(x, "1")
			if count > max {
				max = count
			}
		}
	}

	fmt.Printf("%d", max)
}
