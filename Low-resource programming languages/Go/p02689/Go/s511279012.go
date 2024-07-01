package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type tower struct {
	high int
	good bool
}


func main() {
	sc.Split(bufio.ScanWords)
	n, m := nextInt(), nextInt()

	t := make(map[int]*tower, n)
	for i := 1; i <= n; i++ {
		t[i] = &tower{high: nextInt(), good: true}
	}


	for i := 0; i < m; i++ {
		a, b := nextInt(), nextInt()
		if t[a].high < t[b].high {
			t[a].good = false
			t[b].good = true
		} else if t[b].high < t[a].high {
			t[a].good = true
			t[b].good = false
		} else {
			t[a].good = false
			t[b].good = false
		}
	}

	var c int
	for _, v := range t {
		if v.good {
			c++
		}
	}

	fmt.Println(c)
}

// =================================
// I/O util
// =================================

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
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