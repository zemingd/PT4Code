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

	var t []int
	for i := 0; i < d; i++ {
		t = append(t, 1)
		var max int
		for j := 1; j <= 26; j++ {
			tmp := t[i]
			t[i] = j
			suti := cal(s, c, t)
			if suti > max {
				max = suti
			} else {
				t[i] = tmp
			}
		}
	}

	for _, v := range t {
		fmt.Println(v)
	}

}

func cal(s [][]int, c []int, t []int) int {
	tmp := make([]int, 26)
	d := len(t)
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
	}
	return satis
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
