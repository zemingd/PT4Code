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
	N, H := nextInt(), []int{}
	for i := 0; i < N; i++ {
		H = append(H, nextInt())
	}

	fmt.Printf("%d\n", ABC116C(N, H))
}

// ABC116C ...
func ABC116C(N int, H []int) int {
	res := 0

	c := []int{}
	for i := 0; i < len(H); i++ {
		c = append(c, 0)
	}

	l := 0
	for l != N-1 || c[N-1] < H[N-1] {
		for r := l; r < len(H); r++ {
			if H[r] > c[r] {
				c[r]++
			} else {
				break
			}
		}
		res++

		for i := l; i < len(H); i++ {
			if H[i] > c[i] || i == len(H)-1 {
				l = i
				break
			}
		}
	}

	return res
}
