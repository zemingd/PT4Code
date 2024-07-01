package main

import "fmt"
import "sort"
import "bytes"
	
func main() {
    
	var n, l int
	fmt.Scanf("%d %d",&n, &l)
	
	var s []string
	for i := 0; i < n; i++ {
	    var tmp string
	    fmt.Scanf("%s",&tmp)
	    s = append(s, tmp)
	}
	
	sort.Strings(s)
	
	var buffer bytes.Buffer
	for i := 0; i < n; i++ {
	    buffer.WriteString(s[i])
	}
	
	fmt.Println(buffer.String())
	
}