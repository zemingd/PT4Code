package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strings"
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
	fmt.Println(strings.LastIndex(s, "Z") - strings.Index(s, "A") + 1)
}
