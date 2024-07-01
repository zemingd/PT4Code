package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextint() int{
	sc.Scan()
	i,_ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextint()
	m := nextint()
	a := make([]int,n)
	for i := 0; i < n; i++ {
		a[i] = nextint()
	}

	b := make([]int,m+1)
	for _,s := range a {
		for t := 1; t <= m; t++ {
			if !(t >= s/2 && (t-s/2)%s == 0) {
				b[t] = 1
			}
		}
	}
	
	res := 0
	for i := 1; i <= m; i++ {
		if b[i] == 0 {
			res ++
		}
	}
	fmt.Println(res)
}