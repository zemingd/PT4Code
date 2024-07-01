package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

//func nextString() string {
//	sc.Scan()
//	return sc.Text()
//}

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

func pow2(x int) int {
	ans := 1
	if x == 0 {
		// do nothing
	} else {
		for i := 0; i < x; i++ {
			ans *= 2
		}
	}
	return ans
}

func main() {
	a := nextInt()
	b := nextInt()
	c := nextInt()
	k := nextInt()
	ans := false

	for x := 0; x < 7; x++ {
		bb := b * pow2(x)
		cc := c * pow2(k - x)
		if a < bb && bb < cc {
			ans = true
			break
		}
	}

	if (ans) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
