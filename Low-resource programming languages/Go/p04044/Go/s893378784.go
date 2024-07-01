package main

import (
	"fmt"
	"sort"
)

func main(){

	var num, length int
	fmt.Scan(&num, &length)
	list := make([]string, num)
	for i , _:= range list {
		fmt.Scan(&list[i])
	}
	sort.Strings(list)

	var sb string
	for i, _ := range list {
		sb += list[i]
	}
	fmt.Println(sb)
}