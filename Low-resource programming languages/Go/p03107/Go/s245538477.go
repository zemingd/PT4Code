// https://atcoder.jp/contests/abc120/tasks/abc120_c

package main

import "fmt"

func main() {
	var s []byte
	fmt.Scanf("%s", &s)

	count := 0
next:
	for {
		for i := 0; i < len(s)-1; i++ {
			if s[i] != s[i+1] {
				count += 2
				s = append(s[0:i], s[i+2:]...)
				continue next
			}
		}
		fmt.Println(count)
		return
	}
}
