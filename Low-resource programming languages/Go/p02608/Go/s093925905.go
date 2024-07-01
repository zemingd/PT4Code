package main

import (
	"fmt"
)

// bit全探索

func main(){
	var n int
	fmt.Scan(&n)


	for index:= 1;  index <=  n; index++ {
		cnt := 0
		for i := 1; i*i <= n;i++ {
			for j := 1; j *j <= n; j++ {
				for k := 1; k *k <= n; k++ {
					shiki := i*i +j*j+k*k +i*j+j*k+k*i
					if index == shiki{
						cnt++
					}
					if index < shiki{
						break
					}
				}
			}
		}
		fmt.Println(cnt)
	}
}


// 素因数分解
func PrimeFactors(n int) (pfs []int) {
	// Get the number of 2s that divide n
	for n%2 == 0 {
		pfs = append(pfs, 2)
		n = n / 2
	}

	// n must be odd at this point. so we can skip one element
	// (note i = i + 2)
	for i := 3; i*i <= n; i = i + 2 {
		// while i divides n, append i and divide n
		for n%i == 0 {
			pfs = append(pfs, i)
			n = n / i
		}
	}

	// This condition is to handle the case when n is a prime number
	// greater than 2
	if n > 2 {
		pfs = append(pfs, n)
	}

	return
}
