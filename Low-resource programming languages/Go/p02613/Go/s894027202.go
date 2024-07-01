package main

import (
	"fmt"
)


func main(){
	var n int
	fmt.Scanf("%d",&n)
	m:=make(map[string]int)
	keys:=[]string{"AC","WA","TLE","RE"}
	for i:=0;i<n;i++{
		var s string
		fmt.Scanf("%s\n",&s)
		m[s]=m[s]+1
	}
	for _,s:=range keys{
		fmt.Printf("%s x %d\n", s, m[s])
	}

}
