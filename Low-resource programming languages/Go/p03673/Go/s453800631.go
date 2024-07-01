// 問題文は読んでないがサンプルからエスパー
package main

import "fmt"

var n int

func main() {
	fmt.Scan(&n)
	odd, even := []string{}, []string{}
	for i := 0; i < n; i++ {
		var j string
		fmt.Scan(&j)
		if i%2 == 0 {
			odd = append(odd, j)
		} else {
			even = append(even, j)
		}
	}
	ans := []string{}
	for i := 0; i < len(even); i++ {
		ans = append(ans, even[len(even)-i-1])
	}
	for i := 0; i < len(odd); i++ {
		ans = append(ans, odd[i])
	}
	for _, a := range ans {
		fmt.Print(a, " ")
	}
}
