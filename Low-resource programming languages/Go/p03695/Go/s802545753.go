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
	// lateIndex := 0
	colos := make([]bool, 8)
	// beyonds := 0
	for i:= 0; i<N; i++ {
		target := a[i]
		for i:=0; i<8; i++ {
			if target < lated[i] {
				if !colos[i] {
					colos[i] = true
					// fmt.Println(target, lated[i])
					min += 1
					max += 1
					break
				} else {
					break
				}
			}
		}
		if target >= 3200 {
			// beyonds += 1
			max += 1
		}
 	}
 	//for i:= 0; i<beyonds; i++ {
 	//	for j:= 0; j<=7; j++ {
 	//		if !colos[j] {
 	//			colos[j] = true
 	//
	//		}
	//	}
	//}
	if min <= 0 {
		fmt.Print(1)
	} else {
		fmt.Print(min)
	}
	fmt.Print(" ")
	if max >= 8 {
		fmt.Print(max)
	} else {
		fmt.Print(max)
	}
	// fmt.Println(colos,lated)
}

//func lateExamine(lated []int,lateIndex int, value int, count int,minCount int,check int) (int,int,int){
//	// fmt.Println(lated,lateIndex,value,count,minCount)
//	if value >= lated[lateIndex] {
//		if lateIndex == 7 {
//			return lateIndex,count+1,count
//		} else {
//			return lateExamine(lated,lateIndex+1,value,count,minCount,1)
//		}
//	}
//	return lateIndex,count+check,count+check
//}
