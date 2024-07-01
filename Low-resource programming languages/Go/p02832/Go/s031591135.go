package main

import "fmt"

func main(){
	var N int
	var a[200000] int
	var b[200000] int
	var K, count int

	fmt.Scan(&N)

	for i := 1 ; i <= N ; i++ {
		fmt.Scan(&a[i])
	}
	count = 1
	for i := 1 ; i <= N ; i++ {
		if count == a[i]{
			b[i] = a[i]
			count++
		}else {
			K++
		}
		// fmt.Printf("%d ", a[i])
	}
//	fmt.Println()

	if K == 0 {
		fmt.Println("0")
	}else if K == N {
		fmt.Println("-1")
	}else {
		fmt.Println(K)
	}
}