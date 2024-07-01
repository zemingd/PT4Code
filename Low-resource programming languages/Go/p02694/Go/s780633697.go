package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	var i int
	if sc.Scan() {
		if num, err := strconv.Atoi(sc.Text()); err == nil {
			i = num
		}
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	var deposit float64 = 100
	x := nextInt()

	for i := 1; i <= int(math.Pow10(18)); i++ {
		deposit = math.Trunc(deposit * 1.01)
		if x <= int(deposit) {
			fmt.Println(i)
			return
		}
	}
}
