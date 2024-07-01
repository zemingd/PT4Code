// よくあるやつ 2500まで調べる必要はなく、Kまででいい
package main

import "fmt"

var k, s int

func main() {
	fmt.Scan(&k, &s)
	ans := 0
	for x := 0; x <= k; x++ {
		for y := 0; y <= k; y++ {
			z := s - (x + y)
			if z < 0 || k < z {
				continue
			}
			ans += 1
		}
	}
	fmt.Println(ans)
}
