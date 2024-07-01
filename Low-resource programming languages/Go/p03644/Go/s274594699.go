package main

import (
	"fmt"
//	"strconv"
//	"sort"
	"math"
//	"regexp"
)


var N int
var ans,ans_c int

func main(){
	fmt.Scan(&N)
	if N ==1 {
		fmt.Println(1)
	}else{
		for i:=1;i<=N;i++{
			var cnt int
			var t int = i
			for t % 2 == 0{
				cnt++
				t /= 2
			}
			if ans_c < cnt{
				ans = i
				ans_c = cnt
			}
		}
		fmt.Println(ans)
	}
}

func max(x,y int)int{
	return int(math.Max(float64(x),float64(y)))
}