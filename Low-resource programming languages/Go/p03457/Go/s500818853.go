package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	solve()
}

func solve() {
	sc.Split(bufio.ScanWords)

	n := nextInt()

	isPossible := true
	for i := 0; i < n; i++ {
		t, x, y := nextInt(), nextInt(), nextInt()
		d := x + y
		if t < d || ((t-d)%2 != 0) {
			isPossible = false
			break
		}
	}

	fmt.Println(anser(isPossible, "Yes", "No"))
}

func nextLine() string {
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

func anser(b bool, y string, n string) string {
	if b {
		return y
	}
	return n
}