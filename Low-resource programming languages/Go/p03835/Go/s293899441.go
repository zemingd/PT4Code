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

func readInt() int {
	sc.Scan()
	r, _ := strconv.Atoi(sc.Text())
	return r
}

func main() {
	var K, S int
	K, S = readInt(), readInt()
	cnt := 0
	for i := 0; i <= K; i++ {
		for j := 0; j <= K; j++ {
			for k := 0; k <= K; k++ {
				if i+j+k == S {
					cnt++
				}
			}
		}
	}
	fmt.Println(cnt)
}
