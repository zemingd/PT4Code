package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func nextFloat() float64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return float64(i)
}

func main() {
	sc.Split(bufio.ScanWords)
	a, b, c := nextFloat(), nextFloat(), nextFloat()

	d := c - a - b
	if d > 0 && 4*a*b < d*d {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
