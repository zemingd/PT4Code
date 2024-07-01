package main

import (
	"fmt"
	"sort"
	"strings"
)


func main() {
	var n int
	fmt.Scan(&n)
	S := make([]string, n)
	for i := 0; i<n;i++ {
		var c string
		fmt.Scan(&c)
		k:=strings.Split(c,"")
		sort.Strings(k)
		S[i]= strings.Join(k,"")
	}
	A := make([]int64, n)
	for i,v := range S {
		for j, w := range S {
			if i != j && v == w {
				A[i]++
			}
		}
		
	}
	var sum int64
	for _,v := range A {
		sum+= v
	}
	fmt.Println(sum/2)
}