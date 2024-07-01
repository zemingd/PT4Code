package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	d := nextInt()

	c := make([]int, 26)
	for i := 0; i < 26; i++ {
		c[i] = nextInt()
	}

	s := make([][]int, d)
	for i := 0; i < d; i++ {
		s[i] = make([]int, 26)
		for j := 0; j < 26; j++ {
			s[i][j] = nextInt()
		}
	}

	t := make([]int, d)
	for i := 0; i < d; i++ {
		t[i] = nextInt()
	}

	tmp := make([]int, 26)
	var satis int
	for i := 0; i < d; i++ {
		tk := t[i] - 1
		satis += s[i][tk]

		var nega int
		for k, _ := range tmp {
			if k == tk {
				tmp[k] = 0
			} else {
				tmp[k]++
				nega += tmp[k] * c[k]
			}
		}
		satis -= nega
		fmt.Println(satis)
	}
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
