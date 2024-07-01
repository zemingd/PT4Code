package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func main() {
	sc.Split(bufio.ScanWords)
	n := scanInt()
	m := scanInt()

	p,q := 1,n

	for i:=0; i<m; i++ {
		l := scanInt()
		r := scanInt()
		
		if p<l {
			p = l
		}

		if q>r {
			q = r
		}
	}

	if q-p+1 < 0 {
		fmt.Println(0)
	} else {
		fmt.Println(q-p+1)
	}
}
