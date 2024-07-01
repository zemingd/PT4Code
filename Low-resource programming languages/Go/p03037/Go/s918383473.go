package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	s.Scan()
	//n, _ := strconv.Atoi(s.Text())
	s.Scan()
	m, _ := strconv.Atoi(s.Text())

	l := make([]int, m)
	r := make([]int, m)
	var min, max int
	max = 0
	min = 100000
	for i := 0; i < m; i++ {
		s.Scan()
		l[i], _ = strconv.Atoi(s.Text())
		if l[i] > max {
			max = l[i]
		}
		s.Scan()
		r[i], _ = strconv.Atoi(s.Text())
		if r[i] < min {
			min = r[i]
		}
	}

	if min >= max {
		fmt.Println(min - max + 1)
	} else {
		fmt.Println(0)
	}

}
