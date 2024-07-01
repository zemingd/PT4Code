package main

import "fmt"

func main() {
	var mod int64 = 1000000007
	var n int64
	fmt.Scan(&n)

	a := make([]int64, n)

	for i := range a {
		fmt.Scan(&a[i])
	}

	length := len(a)
	var data int64

	for j := 0; j <= length; j++{
		for k := j+1; k < length; k++ {
			data += a[j] * a[k] % mod
		}
	}

	fmt.Println(data%mod)
}
