package main

import (
    "fmt"
    "sort"
    "strings"
)

func main() {
    
	var n, l int
	fmt.Scanf("%d %d",&n, &l)
	
	s := make([]string, n)
	for i := 0; i < n; i++ {
	    fmt.Scan(&s[i])
	}
	
	sort.Strings(s)
	
	fmt.Print(strings.Join(s, ""))
	fmt.Println()
	
}