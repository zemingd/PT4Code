package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	n := nextInt()

	for i := int(math.Floor(math.Sqrt(float64(n)))); i > 0; i-- {
		if n%i == 0 {
			fmt.Println(math.Ceil(math.Log10(float64((n / i) + 1))))
			return
		}
	}
	panic("Error!")
}
