package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type As [][]int

func (s As) Less(i, j int) bool {
	if s[i][0] == s[j][0] {
		return s[i][1] > s[j][1]
	}
	return s[i][0] > s[j][0]
}

func (s As) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func (s As) Len() int {
	return len(s)
}

func main() {
	var x, y, a, b, c int
	fmt.Scan(&x, &y, &a, &b, &c)

	var sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	as := make(As, a+b+c)
	//fmt.Println(a, b, c, a+b+c)
	for i := 0; i < a; i++ {
		sc.Scan()
		k, _ := strconv.Atoi(sc.Text())
		as[i] = []int{k, 1}
	}
	for i := 0; i < b; i++ {
		sc.Scan()
		k, _ := strconv.Atoi(sc.Text())
		as[a+i] = []int{k, 2}
	}
	for i := 0; i < c; i++ {
		sc.Scan()
		k, _ := strconv.Atoi(sc.Text())
		as[a+b+i] = []int{k, 3}
	}
	sort.Sort(as)

	var sum, cnt, ac, bc int
	for i := range as {
		switch as[i][1] {
		case 1:
			if ac < x {
				ac++
				cnt++
				sum += as[i][0]
			}
		case 2:
			if bc < y {
				bc++
				cnt++
				sum += as[i][0]
			}
		case 3:
			if cnt < x+y {
				cnt++
				sum += as[i][0]
			}
		}
		if cnt == x+y {
			break
		}
	}

	fmt.Println(sum)
}
