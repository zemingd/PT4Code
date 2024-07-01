package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	a, b, k := nextInt(), nextInt(), nextInt()
	aValue := a - k

	var bValue int
	if aValue > 0 {
		bValue = b
	} else {
		bValue = b + aValue
	}
	fmt.Println(math.Max(float64(aValue), 0), math.Max(float64(bValue), 0))
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
