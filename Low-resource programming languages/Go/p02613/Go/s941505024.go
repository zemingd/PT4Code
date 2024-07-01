package main

import (
	"bufio"
	"os"
	"fmt"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

//func nextUint64() uint64 {
//	sc.Scan()
//	i, e := strconv.ParseUint(sc.Text(), 10, 64)
//	if e != nil {
//		panic(e)
//	}
//	return i
//}

func main() {
	n := nextInt()
	s := make([]string, n, n)
	c := make([]int, 4, 4)

	for i := 0; i < n; i++ {
		s[i] = nextString()

		switch s[i] {
		case "AC":
			c[0]++
		case "WA":
			c[1]++
		case "TLE":
			c[2]++
		case "RE":
			c[3]++
		default:
		}
	}

	fmt.Printf("AC x %d\n", c[0])
	fmt.Printf("WA x %d\n", c[1])
	fmt.Printf("TLE x %d\n", c[2])
	fmt.Printf("RE x %d\n", c[3])

}
