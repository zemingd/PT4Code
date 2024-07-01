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
	var k, s int
	k, s = readInt(), readInt()
	cnt := 0
	if k > s {
		k = s
	}
	for x := 0; x <= k; x++ {
		for y := 0; y <= k; y++ {
			if z := s - (x + y); 0 <= z && z <= k {
				cnt++
			}
		}
	}
	fmt.Println(cnt)
}
