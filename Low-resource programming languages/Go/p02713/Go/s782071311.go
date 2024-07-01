package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func swap(a int, b int) (int, int) {
	return b, a
}

func GCD(a int, b int) int {
	if b > a {
		a, b = swap(a, b)
	}
	if b == 0 {
		return a
	} else {
		return GCD(a%b, b)
	}
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	ans := 0
	K := nextInt()
	for a := 1; a <= K; a++ {
		for b := 1; b <= K; b++ {
			for c := 1; c <= K; c++ {
				tmp := GCD(a, b)
				ans += GCD(tmp, c)
			}
		}
	}
	fmt.Printf("%d\n", ans)
}
