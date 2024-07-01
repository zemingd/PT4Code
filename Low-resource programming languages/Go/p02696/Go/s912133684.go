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

func readFloat64() float64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return float64(i)
}

func main() {
	sc.Split(bufio.ScanWords)
	a, b, n := readFloat64(), readFloat64(), readInt()

	x := 1.0
	max := 0
	for {
		y := floor((a*x)/b) - int(a)*floor(x/b)
		if int(x) > n {
			break
		}
		if y > max {
			max = y
		}
		x++
	}
	fmt.Println(max)
}

func floor(a float64) int {
	return int(a)
}
