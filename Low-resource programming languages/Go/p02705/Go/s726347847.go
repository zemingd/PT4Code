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
	sc.Scan()
	num, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return num
}

func main() {
	sc.Split(bufio.ScanWords)

	r := nextInt()
	ans := float64(r) * math.Pi * 2.0000

	fmt.Println(ans)
}
