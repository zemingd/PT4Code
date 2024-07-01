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

func main() {
	sc.Split(bufio.ScanWords)
	x := readInt()

	y := 100
	n := 0
	for {
		y = int(float64(y) * 1.01)
		n++
		if y >= x {
			break
		}
	}
	fmt.Println(n)
}
