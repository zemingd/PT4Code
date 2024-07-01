package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, math.MaxInt64)
}

func readInt() int {
	sc.Scan()
	r, _ := strconv.Atoi(sc.Text())
	return r
}

func main() {
	a, b := readInt(), readInt()
	switch {
	case a < b:
		s := strconv.Itoa(a)
		fmt.Println(strings.Repeat(s, b))
	case a >= b:
		s := strconv.Itoa(b)
		fmt.Println(strings.Repeat(s, a))
	}
}
