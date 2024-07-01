package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	a := make([]int,N)
	lated := make([]int,8)
	min := 0
	max := 0
	for i:= 0; i<N; i++ {
		fmt.Scan(&a[i])
	}
	for i:=1; i<= 8; i++ {
		lated[i-1] = i*400
	}
	lateIndex := 0
	for i:= 0; i<N; i++ {
		var count,minCount int
		lateIndex,count,minCount = lateExamine(lated,lateIndex,a[i],0,0,0)
		// fmt.Println(count,a[i],"korekore")
		min += minCount
		max += count
 	}
 	fmt.Print(min)
	fmt.Print(" ")
	fmt.Print(max)
}

func lateExamine(lated []int,lateIndex int, value int, count int,minCount int,check int) (int,int,int){
	// fmt.Println(lated,lateIndex,value,count,minCount)
	if value >= lated[lateIndex] {
		if lateIndex == 7 {
			return lateIndex,count+1,count
		} else {
			return lateExamine(lated,lateIndex+1,value,count,minCount,1)
		}
	}
	return lateIndex,count+check,count+check
}
