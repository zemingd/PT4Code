package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func out(x ...interface{}) {
	//	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

const inf = int(1e18 + 100)

func check(N, m int, a []int) int {
	cnt := 0
	cnt1 := 0
	x := m
	out("x=", x, m)
	for i := 0; i < N; i++ {
		if a[i]*a[i] < x {
			cnt1++
		}
		if a[i] < 0 {
			for j := N - 1; j >= 0; j-- {
				if a[i]*a[j] < x {
					cnt++
				} else {
					break
				}
			}
		} else if a[i] > 0 {
			for j := 0; j < N; j++ {
				if a[i]*a[j] < x {
					cnt++
				} else {
					break
				}
			}
		} else { // a[i] == 0
			cnt += N
		}
	}
	ret := (cnt - cnt1) / 2
	out(ret)
	return ret
}

func getNum(N, m, k int, a []int) int {
	x := m
	val := make([]int, 0, 1000)
	for i := 0; i < N; i++ {
		if a[i] < 0 {
			for j := N - 1; j >= 0; j-- {
				if i == j {
					continue
				}
				if a[i]*a[j] < x {
					val = append(val, a[i]*a[j])
				} else {
					break
				}
			}
		} else if a[i] > 0 {
			for j := i + 1; j < N; j++ {
				if a[i]*a[j] < x {
					val = append(val, a[i]*a[j])
				} else {
					break
				}
			}
		} else { // a[i] == 0
			if x >= 0 {
				for j := i + 1; j < N; j++ {
					val = append(val, 0)
				}
			}
		}
	}
	sort.Ints(val)
	for i, v := range val {
		out(i, v)
	}
	return val[len(val)-1]
}

func main() {
	sc.Split(bufio.ScanWords)

	N, K := getInt(), getInt()
	a := make([]int, N)
	for i := 0; i < N; i++ {
		a[i] = getInt()
	}

	sort.Ints(a)

	l := -inf
	r := inf
	res := 0
	for l+1 != r {
		m := (l + r) / 2
		res = check(N, m, a)
		if res > K {
			r = m
		} else {
			l = m
		}
		out("num= ", res, l, r)
	}

	fmt.Println(getNum(N, (l+r)/2, res-1, a))
}
