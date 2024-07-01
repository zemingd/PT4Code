package main

import "fmt"

func gcd(m, n int) int {
	if (m % n) == 0 {
		return n
	}
	return gcd(n, m%n)
}


func main() {
	var k int
	fmt.Scan(&k)

	count := 0
	for i:=1; i<=k; i++{
		for j:=1; j<=k; j++{
			for m:=1; m<=k; m++{
				temp := gcd(i, j)
				count += gcd(temp, m)
			}
		}
	}

	fmt.Println(count)

}