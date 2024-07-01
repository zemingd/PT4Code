package main

import (
	"bufio"
	"os"
	"strconv"
	"math"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	if !sc.Scan() {
		panic("failed scan string")
	}
	return sc.Text()
}

func nextInt() int {
	if !sc.Scan() {
		panic("failed scan int")
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	x := nextInt()

	max := 1
	for i := 2; i <= x; i++ {
		for j := 2; true; j++ {
			y := int(math.Pow(float64(i), float64(j)))
			if y > x {
				break
			}
			if y > max {
				max = y
			}
		}
	}
	fmt.Println(max)
}
