package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, math.MaxInt64)
}

func readFloat() float64 {
	sc.Scan()
	r, _ := strconv.ParseFloat(sc.Text(), math.MaxInt64)
	return r
}

func main() {
	d, n := readFloat(), readFloat()
	fmt.Println(math.Pow(100, d) * n)
}
