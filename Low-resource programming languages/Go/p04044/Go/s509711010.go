package main

import (
	"fmt"
	"sort"
	"strings"
)

func main(){

	var num, length int
	fmt.Scan(&num, &length)
	list := make([]string, num)
	for i , _:= range list {
		fmt.Scan(&list[i])
	}
	sort.Strings(list)

	var sb strings.Builder
	for i, _ := range list {
		sb.WriteString(list[i])
	}
	fmt.Println(sb.String())
}