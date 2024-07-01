package main

import (
	"fmt"
//	"sort"
//	"math"
//	"regexp"
)


var s,ans string

func main(){
	fmt.Scan(&s)

	for i, str := range s{
		if i % 2 ==0{
			ans = ans + string(str)
		}
	}
	fmt.Println(ans)
}
