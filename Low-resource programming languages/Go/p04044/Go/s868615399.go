package main

import (
	"fmt"
//	"strconv"
	"sort"
//	"math"
//	"regexp"
)


var N,L int
var ans string
func main(){
	fmt.Scan(&N,&L)
	S := make([]string,N)

	for i:=0;i<N;i++{
		fmt.Scan(&S[i])
	}

	sort.Strings(S)
	for _,str := range S{
		ans += str		
	}
	fmt.Println(ans)
}
