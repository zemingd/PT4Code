// https://atcoder.jp/contests/abc051/tasks/abc051_b
package main

import "fmt"

func main() {
	var k, s int
	nums := 0
	fmt.Scan(&k, &s)
	for i := 0; i < k+1; i++ {
		for j := 0; j < k+1; j++ {
			for m := 0; m < k+1; m++ {
				if i+j+m == s {
					nums++
				}
			}
		}
	}
	fmt.Println(nums)
}
