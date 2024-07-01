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
	for i := 0; i < len(s); i++ {
		if i%2 == 0 {
			fmt.Printf("%c", s[i])
		}
	}
	fmt.Println("")
}
