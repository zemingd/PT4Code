package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextFloat64() float64 {
	sc.Scan()
	i, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return i
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	//sc.Buffer(nil, 100000000)

	s, t := nextString(), nextString()

	ans := len(t)

	lenk := len(s)
	lent := len(t)

	for k := range s {
		if (k + lent) > lenk {
			break
		}
		max := len(t)
		for k2, v2 := range t {
			if rune(s[k+k2]) == v2 {
				max--
			}
		}
		if ans > max {
			ans = max
		}
	}
	fmt.Println(ans)

}
