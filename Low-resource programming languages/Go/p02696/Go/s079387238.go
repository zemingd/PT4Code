package main

import "fmt"

func main() {
	var a, b, n int
	fmt.Scanf("%d %d %d", &a, &b, &n)

	//for x := 0; x <= n; x++ {
	//	fmt.Println((a*x)/b - a*(x/b))
	//}
	max := 0
	temp := 0
	flag := 0
	if b > n {
		flag = n
	} else {
		flag = b
	}
	for i := flag - 5; i <= flag; i++ {
		temp = (a*i)/b - a*(i/b)
		if max < temp {
			max = temp
		}
	}
	fmt.Println(max)
}
