package main

import(
	"fmt"
)

func main(){
	var n int
	fmt.Scan(&n)
	s := make([]string, n)
	for i:=0; i<n; i++ {
		var tmp string
		fmt.Scan(&tmp)
		s[i] = tmp
	}
	resultMap := make(map[string]int)
	for _,v := range s {
		resultMap[v] ++
	}
	fmt.Printf("AC x %d\n", resultMap["AC"])
	fmt.Printf("WA x %d\n", resultMap["WA"])
	fmt.Printf("TLE x %d\n", resultMap["TLE"])
	fmt.Printf("RE x %d\n", resultMap["RE"])
}
