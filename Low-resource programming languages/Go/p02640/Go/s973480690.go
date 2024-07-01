package main

import "fmt"

func main() {
	var X,Y int
	fmt.Scan(&X,&Y)
	Y2 := X * 2
	flag := false
	for i:= 1; i<=X; i++ {
		// 一匹ずつ亀にしてみる
		if Y2 == Y {
			flag = true
		} else {
			Y2 += 2
		}
	}
	if !flag {
		if X*4 == Y {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	} else {
		fmt.Println("Yes")
	}
}
