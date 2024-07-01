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

var v []int
var n int

func main() {
	sc.Split(bufio.ScanWords)
	n = nextInt()
	v = make([]int, n)
	m1 := make(map[int]int)
	m2 := make(map[int]int)

	for i := 0; i < n; i++ {
		v[i] = nextInt()
		if i%2 == 0 {
			m1[v[i]]++
		} else {
			m2[v[i]]++
		}
	}

	if len(m1) == 1 && len(m2) == 1 {
		flag := true

		for i := 0; i < n-1; i++ {
			if v[i] != v[i+1] {
				flag = false
				break
			}
		}

		if flag {
			fmt.Println(n / 2)
			return
		}
	}

	// fmt.Println(m1)
	// fmt.Println(m2)

	em := -1
	ek := 0
	for k, v := range m1 {
		if em < v {
			em = v
			ek = k
		}
	}

	om := -1
	for k, v := range m2 {
		if om < v && ek != k {
			om = v
		}
	}
	ans1 := n - em - om

	fmt.Println(ans1)
}
