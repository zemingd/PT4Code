package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, ans int
	m := []int{}
	fmt.Scan(&n)
	for i:=0;i<n;i++{
		var a int
		fmt.Scan(&a)
		m=append(m,a)
	}
	sort.Ints(m)
	ans= m[0]
	for i:=1;i<n;i++{
		num := m[i] % ans
		if  num >0 && num<ans{
			ans =num
		}
	}
	
	fmt.Println(ans)
}