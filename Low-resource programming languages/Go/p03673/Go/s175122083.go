package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	b := make([]int, n)
	f := true
	x := n / 2
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
		if f {
			b[x+i/2] = a[i]
			f = false
		} else {
			b[x-i/2-1] = a[i]
			f = true
		}	
	}
    if f {
		fmt.Println(strings.Trim(fmt.Sprint(b), "[]"))
	} else {
        c := make([]int,n)
        for i := 0; i < n; i++ {
            c[n-i-1]=b[i]
        }
        fmt.Println(strings.Trim(fmt.Sprint(c), "[]"))
	}
}
