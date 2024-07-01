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

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func main() {
	sc.Split(bufio.ScanWords)
	N := nextInt()
	T, X, Y := []int{}, []int{}, []int{}
	for i := 0; i < N; i++ {
		T, X, Y = append(T, nextInt()), append(X, nextInt()), append(Y, nextInt())
	}

	fmt.Printf("%s\n", ABC086C(T, X, Y))
}

// ABC086C ...
func ABC086C(T, X, Y []int) string {
	ct, cx, cy := 0, 0, 0

	for i := 0; i < len(T); i++ {
		dt, dx, dy := T[i]-ct, abs(X[i]-cx), abs(Y[i]-cy)

		rt := dt - (dx + dy)
		if rt < 0 || rt%2 != 0 {
			return "No"
		}

		ct, cx, cy = T[i], X[i], Y[i]
	}

	return "Yes"
}
