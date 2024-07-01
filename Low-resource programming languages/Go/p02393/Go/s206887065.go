package main

import (
	"fmt"
	"sort"
)

func Sorting3(n []int) {
	sort.Ints(n)
		fmt.Printf("%d %d %d\n", n[0], n[1], n[2]);
}

func main(){
	var dataInt []int
	var inp int
	
		for i := 0; i < 3; i++ {		
			fmt.Scan(&inp)
			dataInt = append(dataInt, inp)
		}

	Sorting3(dataInt)
}
