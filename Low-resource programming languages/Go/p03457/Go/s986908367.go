package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

func nextString() string {
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

func main() {
	N := nextInt()
	var T, X, Y int
	for i := 0; i < N; i++ {
		t := nextInt()
		x := nextInt()
		y := nextInt()
		d := X - x + Y - y
		if d < 0 {
			d = -d
		}
		T = t - T
		if T%d != 0 {
			fmt.Println("No")
			return
		}
		X = x
		Y = y
	}
	fmt.Println("Yes")
}
