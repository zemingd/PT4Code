package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, math.MaxInt64)
}

func readString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	s := readString()
	fmt.Printf("%c%v%c\n", s[0], len(s)-2, s[len(s)-1])
}
