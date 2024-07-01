package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextWord() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	i, e := strconv.Atoi(nextWord())
	if e != nil {
		panic(e)
	}
	return i
}

func max(lhs, rhs int) int {
	if lhs < rhs {
		return rhs
	}
	return lhs
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	var a []int
	for i := 0; i < n; i++ {
		a = append(a, nextInt())
	}

	var ans int
	for i := 0; i < n-2; i++ {
		for j := i + 1; j < n-1; j++ {
			l := max(a[i]-a[j], a[j]-a[i])
			u := a[i] + a[j]
			for k := j + 1; k < n; k++ {
				if l < a[k] && a[k] < u {
					ans++
				}
			}
		}
	}
	fmt.Println(ans)
}
