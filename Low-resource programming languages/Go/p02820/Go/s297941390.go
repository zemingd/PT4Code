package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

//Util
func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func maxInt(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func minInt(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}

func absInt(a int) int {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

func absFloat64(a float64) float64 {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

func maxFloat64(a, b float64) float64 {
	if a > b {
		return a
	} else {
		return b
	}
}

func minFloat64(a, b float64) float64 {
	if a > b {
		return b
	} else {
		return a
	}
}

func str2Int(s string) int {
	n, _ := strconv.Atoi(s)
	return n
}

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func pow(p, q int) int {
	return int(math.Pow(float64(p), float64(q)))
}

func isPrime(x int) bool {
	if x == 1 {
		return false
	}
	if x == 2 {
		return true
	}
	if x%2 == 0 {
		return false
	}

	b := true
	rootx := int(math.Sqrt(float64(x)))
	i := 3
	for i <= rootx {
		if x%i == 0 {
			b = false
			break
		}
		i += 2
	}
	return b
}

//Main
const (
	initialBufSize = 10000
	maxBufSize     = 1000000
	mod            = 1e9 + 7
)

var (
	sc *bufio.Scanner = func() *bufio.Scanner {
		sc := bufio.NewScanner(os.Stdin)
		buf := make([]byte, initialBufSize)
		sc.Buffer(buf, maxBufSize)
		return sc
	}()
)

var N, K, R, S, P int
var T string

func main() {
	sc.Split(bufio.ScanWords)
	N, K = nextInt(), nextInt()
	R, S, P = nextInt(), nextInt(), nextInt()
	T = nextStr()
	runeT := []rune(T)

	ans := 0
	for k := 0; k < K; k++ {
		var last bool
		for i := k; i < N; i += K {
			//2回連続の場合は、falseにする
			if i >= K && runeT[i-K] == runeT[i] && last {
				last = false
			} else {
				//fmt.Println(string(runeT[i]))
				if string(runeT[i]) == "s" {
					ans += R
				} else if string(runeT[i]) == "r" {
					ans += P
				} else {
					ans += S
				}
				last = true
			}
		}
	}

	fmt.Println(ans)
}
