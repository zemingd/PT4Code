package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func readString() string {
	sc.Scan()
	return sc.Text()
}

func readInt64() int64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return int64(i)
}

func readfloat64() float64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return float64(i)
}

func abs(a int) int {
	if a < 0 {
		return a * -1
	}
	return a
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	sc.Split(bufio.ScanWords)

	n := readInt()
	l := make([]int, n)
	for i := 0; i < n; i++ {
		l[i] = readInt()
	}

	ans := 0
	v := pow(2, n) - 1
	for i := 0; i < v; i++ {
		count := 0
		edge := make([]int, 0, 3)
		for j := 0; j < n; j++ {
			if i>>j&1 == 1 {
				count++
				edge = append(edge, j)
			}
		}
		if count == 3 {
			a, b, c := l[edge[0]], l[edge[1]], l[edge[2]]
			if check(a, b, c) && check(b, c, a) && check(c, a, b) {
				ans++
			}
		}
	}
	fmt.Println(ans)
}

func check(a, b, c int) bool {
	return a < b+c
}

func pow(a, n int) int {
	if n == 0 {
		return 1
	}

	ans := 0
	if n%2 == 0 {
		ans = pow(a*a, n/2)
	} else {
		ans = a * pow(a*a, (n-1)/2)
	}
	return ans
}
