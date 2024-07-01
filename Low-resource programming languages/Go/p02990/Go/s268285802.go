package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

const mod = 1000000007

func mpow(x,n int) int {
	a := 1
	for ;; {
		if n&1 == 1 {
			a = a*x %mod
		}
		x = x*x %mod
		n = n >> 1
		if n == 0 {
			break
		}
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
	sc.Split(bufio.ScanWords)
	
	n,k := scanInt(),scanInt()

	blue := k
	red := n-k

	fac := make([]int,n+1) // n!
	facp := make([]int,n+1) // n!^{mod-2}
	fac[0] = 1
	facp[0] = 1
	for i := 0; i < n; i++ {
		fac[i+1] = fac[i]*(i+1)%mod
		facp[i+1] = facp[i]*mpow(i+1,mod-2) %mod
	}

	for i := 1; i < k+1; i++ {
		if red+1 < i {
			fmt.Println(0)
			continue
		}
		
		fmt.Println(comb(red+1,i,fac,facp)*mpow(i,blue-i)%mod)
	}
}
