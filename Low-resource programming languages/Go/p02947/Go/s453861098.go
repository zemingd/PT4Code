package main

import (
	"fmt"
	"sort"
	"strings"
)

func inputSlice(inputNums int) []string {
	var ary []string
	for i := 0; i < inputNums; i++ {
		var in string
		fmt.Scan(&in)
		ary = append(ary, in)
	}
	return ary
}

func main() {
	var n int
	fmt.Scan(&n)
	sAry := inputSlice(n)
	var ret int64
	ret = 0

	for i := 0; i < n; i++ {
		A := strings.Split(sAry[i], "")
		sort.Strings(A)
		si := strings.Join(A, "")
		for j := i + 1; j < n; j++ {
			B := strings.Split(sAry[j], "")
			sort.Strings(B)
			sj := strings.Join(B, "")
			if si == sj {
				ret++
			}
		}
	}
	fmt.Println(ret)

	// for i := 0; i < n; i++ {
	// 	m1 := map[string]int{"a": 0, "b": 0, "c": 0, "d": 0, "e": 0, "f": 0, "g": 0, "h": 0, "i": 0, "j": 0, "k": 0, "l": 0, "m": 0, "n": 0, "o": 0, "p": 0, "q": 0, "r": 0, "s": 0, "t": 0, "u": 0, "v": 0, "w": 0, "x": 0, "y": 0, "z": 0}
	// 	for k := 0; k < 10; k++ {
	// 		A := strings.Split(sAry[i], "")
	// 		m1[A[k]]++
	// 	}
	// 	for j := i + 1; j < n; j++ {
	// 		m2 := map[string]int{"a": 0, "b": 0, "c": 0, "d": 0, "e": 0, "f": 0, "g": 0, "h": 0, "i": 0, "j": 0, "k": 0, "l": 0, "m": 0, "n": 0, "o": 0, "p": 0, "q": 0, "r": 0, "s": 0, "t": 0, "u": 0, "v": 0, "w": 0, "x": 0, "y": 0, "z": 0}
	// 		for k := 0; k < 10; k++ {
	// 			B := strings.Split(sAry[j], "")
	// 			m2[B[k]]++
	// 		}
	// 		if reflect.DeepEqual(m1, m2) {
	// 			ret++
	// 		}
	// 	}
	// }
	// fmt.Println(ret)
}
