package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	v := make([]int,n)
	for i := 0; i < n; i++ {
		fmt.Scan(&v[i])
	}

	odd := make(map[int]int)
	for i :=0; i < n; i +=2 {
		_, exist := odd[v[i]]
		if exist {
			odd[v[i]] += 1
		}else{
			odd[v[i]] = 1
		}
	}

	even := make(map[int]int)
	for i:=1; i < n; i +=2 {
		_, exist := even[v[i]]
		if exist {
			even[v[i]] += 1
		}else{
			even[v[i]] = 1
		}
	}

	odd_max := max_values(odd)
	even_max := max_values(even)

	kazu := n - odd_max - even_max

	fmt.Println(kazu)
}


func max_values(m map[int]int) int {
	vs := 0 
	for _, v := range m {
		if vs < v {
			vs =  v
		}
	}
	return vs
}
		


