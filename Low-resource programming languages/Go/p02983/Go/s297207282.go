package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

const div = 2019

func nextInt() int64 {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	l, r := nextInt(), nextInt()

	if l == 0 {
		fmt.Println(0)
		return
	}

	if l-r == 1 {
		fmt.Println(l * r % div)
		return
	}

	if l == 1 && r >= 2019 {
		fmt.Println(0)
		return
	}

	if l == 3 && r >= 673 {
		fmt.Println(0)
		return
	}

	ll := l % div
	rr := r % div

	var s, e int64
	if ll > rr {
		s = rr
		e = ll
	} else {
		s = ll
		e = rr
	}

	re := int64(9999999999)
	for i := s; i <= e; i++ {
		v := div / i

		if re > v {
			re = int64(v)
		}
	}

	fmt.Println(re)
}
