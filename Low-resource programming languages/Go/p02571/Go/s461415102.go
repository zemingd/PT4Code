package main

import (
	"fmt"
	"math"
	"strings"
)

func main() {
	// Code for B - Substring
	var S, T string
	fmt.Scanf("%s", &S)
	fmt.Scanf("%s", &T)

	var num1 int
	var flag int = 0
	for i := 0; i < len(T); i++ {
		A := strings.Index(S, T[0:len(T)-i])
		if A != -1 && len(S) >= A+len(T) {
			//fmt.Println("test 1")
			num1 = i
			flag = 1
			break
		}
	}

	var num2 int
	for i := 0; i < len(T); i++ {
		B := strings.Index(S, T[i:len(T)])
		if B != -1 && B+1 >= len(T) {
			//fmt.Println(B, len(T), T[i:len(T)], i)
			num2 = i
			flag = 1
			break
		}
	}

	if flag == 0 {
		fmt.Println(len(T))
	} else {
		if num1 == 0 {
			fmt.Println(num2)
		} else if num2 == 0 {
			fmt.Println(num1)
		} else {
			C := int(math.Min(float64(num1), float64(num2)))
			fmt.Println(C)
		}
	}
}
