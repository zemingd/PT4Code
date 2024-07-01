package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func solve(H, W int) int {
	l0 := W / 2
	l1 := W / 2
	if W%2 == 1 {
		l0++
	}
	h := H / 2
	ans := (l0 + l1) * h
	if H%2 == 1 {
		ans += l0
	}
	return ans
}

func solve2(H, W int) int {

	ret := 0
	if H%2 == 1 || W%2 == 1 {
		ret = H*W/2 + 1
	} else {
		ret = H * W / 2
	}
	return ret
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, 1000000)

	H, W := getInt(), getInt()

	out(solve(H, W))
}
