package main

import (
	"fmt"
	"math"
)

var (
	a int
)


func main() {
	fmt.Scanf("%d\n",&a)

	count := 0
	for i:=3;i<=a;i+=2{
		if prime(i)==3 {
			count++
		}
	}
	fmt.Println(count)
}

func prime(a int) int {
	count:=0
	n := int(math.Sqrt(float64(a)))
	for i:=3;i<=n;i++{
		if a%i==0{
			count++
		}
	}
	return count
}

/* base -2 number
var (
	a rune
)


func main() {
	fmt.Scanf("%d\n",&a)
	n := 1
	var s string
	if a%2!=0 {
		s = "1"
		a = a-1
	} else {
		s = "0"
	}
	if a==0 {
		s ="0"
	} else {
		for a!=0 {
			if (a/rune(math.Pow(2,float64(n))))%2!=0 {
				s = fmt.Sprintf("1%s",s)
				a = a-rune(math.Pow(-2,float64(n)))

			} else {
				s = fmt.Sprintf("0%s",s)
			}
			n++
		}
	}
	fmt.Println(s)
}
*/

