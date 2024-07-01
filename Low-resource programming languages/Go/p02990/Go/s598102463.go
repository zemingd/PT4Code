package main

import (
	"fmt"
)

const mod = 1000000007

func mpow(x,n int) int {
	a := 1
	for ;n!=0; {
		if n&1 == 1 {
			a = a*x %mod
		}
		x = x*x %mod
		n = n >> 1
	}
	return a
}

func comb(a,b int, fac,facp []int) int {
	if a == 0 && b == 0 {
		return 1
	}
	return (fac[a]*facp[b]%mod)*facp[a-b]%mod
}

func main() {
	var n,k int
	fmt.Scan(&n,&k)

	a := make([]int,n+1) // n!
	b := make([]int,n+1) // n!^{mod-2}
	a[0] = 1
	b[0] = 1
	for i := 0; i < n; i++ {
		a[i+1] = a[i]*(i+1)%mod
		b[i+1] = b[i]*mpow(i+1,mod-2) %mod
	}

	for i := 1; i < k+1; i++ {
		fmt.Println(comb(n-k+1,i,a,b)*comb(k-1,i-1,a,b)%mod)
	}

}
