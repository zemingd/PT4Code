package main

import (
	"fmt"
	"sort"
)

func main()  {
	var A1,A2,A3 int
	_, _ = fmt.Scan(&A1,&A2,&A3)
	A :=[]int{A1,A2,A3}
	sort.Ints(A)
	ans := (A[2] - A[1]) + (A[1] - A[0])
	fmt.Println(ans)
}
