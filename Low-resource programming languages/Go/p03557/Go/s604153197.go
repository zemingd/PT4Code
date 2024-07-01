//ABC 077 C Snuke Festival

package main

import (
	"fmt"
	"sort"
)

func main(){
	var n,ans,point_b,point_c int
	fmt.Scan(&n)
	a := make([]int,n)
	b := make([]int,n)
	c := make([]int,n)
	for i:=0 ; i<n ; i++ {
		fmt.Scan(&a[i])
	}
	for i:=0 ; i<n ; i++ {
		fmt.Scan(&b[i])
	}
	for i:=0 ; i<n ; i++ {
		fmt.Scan(&c[i])
	}
	sort.Sort(sort.IntSlice(a))
	sort.Sort(sort.IntSlice(b))
	sort.Sort(sort.IntSlice(c))

//fmt.Println(a,b,c)
	//b,c compare
	b_ans := make([]int,n)
	point_c = n-1
	var sum int
	for i := n-1 ; i >= 0 ; i-- {
		flag := false
		if point_c >= 0 && b[i] < c[point_c] {
			point_c--
			flag = true
		}
		if flag {
			i++
		} else {
			b_ans[i] = sum + (n-point_c-1)
			sum = b_ans[i]
		}
	}
//fmt.Println(b_ans)
	//a,b compare
	for i:=0; i<n ; i++ {
		flag := false
		if point_b < n && a[i] >= b[point_b] {
			point_b++
			flag = true
		}
		if flag {
			i--
		} else {
			if point_b < n {
				ans += b_ans[point_b]
			}
		}
	}
	fmt.Println(ans)
}
