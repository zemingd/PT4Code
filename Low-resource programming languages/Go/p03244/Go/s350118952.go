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

	odd_key,odd_max := max_values(odd)
	even_key,even_max := max_values(even)
	
	if even_key == odd_key {
		
		delete(even, even_key)
		_,even_max_2 := max_values(even)
		big_even := odd_max + even_max_2
		delete(odd, odd_key)
		_,odd_max_2 := max_values(odd)
		big_odd := odd_max_2 + even_max

		if big_even < big_odd {
			even_max = even_max_2
		}else {
			odd_max = odd_max_2
		}

	
	kazu := n - odd_max - even_max
	fmt.Println(kazu)
}


func max_values(m map[int]int) (int,int) {
	vs := 0
	key := 0 
	for k, v := range m {
		if vs < v {
			vs =  v
			key = k
		}
	}
	return key,vs
}
		


