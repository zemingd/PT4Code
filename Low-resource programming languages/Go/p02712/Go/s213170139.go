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
	n := nextInt()
	var sum int
	for i := 1; i <= n && i <= int(math.Pow(10, 6)); i++ {
		if i%3 != 0 && i%5 != 0 {
			sum += i
		}
	}
	fmt.Println(sum)
}
