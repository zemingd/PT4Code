package main

import (
    "fmt"
    "sort"
    "bytes"
)

func main() {
    
	var n, l int
	fmt.Scanf("%d %d",&n, &l)
	
	s := make([]string, n)
	for i := 0; i < n; i++ {
	    fmt.Scan(&s[i])
	}
	
	sort.Strings(s)
	
	var buffer bytes.Buffer
	for i := 0; i < n; i++ {
	    buffer.WriteString(s[i])
	}
	
	fmt.Println(buffer.String())
	
}