package main

import (
	"fmt"
	"math"
)

func permutation(n int, k int) int {
	v := 1
	if 0 < k && k <= n {
		for i := 0; i < k; i++ {
			v *= (n - i)
		}
	} else if k > n {
		v = 0
	}
	return v
}

func factorial(n int) int {
	return permutation(n, n-1)
}

func main() {
	// Code for C - Average Length
	var N int
	fmt.Scanf("%d", &N)

	x := make([]int, N)
	y := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d %d", &x[i], &y[i])
	}

	a := make([]int, 0)
	for i := 0; i < N; i++ {
		a = append(a, i+1)
	}

	var ans float64
	for i := 0; i < N-1; i++ {
		ans += math.Sqrt(float64((x[a[i+1]-1]-x[a[i]-1])*(x[a[i+1]-1]-x[a[i]-1])) + float64((y[a[i+1]-1]-y[a[i]-1])*(y[a[i+1]-1]-y[a[i]-1])))
	}

	var n = len(a) - 1
	var i, j int
	for count := 2; count <= factorial(len(a)); count++ {
		i = n - 1
		j = n
		for a[i] > a[i+1] {
			i--
		}
		for a[j] < a[i] {
			j--
		}
		a[i], a[j] = a[j], a[i]
		j = n
		i++
		for i < j {
			a[i], a[j] = a[j], a[i]
			i++
			j--
		}

		//---start
		for k := 0; k < N-1; k++ {
			ans += math.Sqrt(float64((x[a[k+1]-1]-x[a[k]-1])*(x[a[k+1]-1]-x[a[k]-1])) + float64((y[a[k+1]-1]-y[a[k]-1])*(y[a[k+1]-1]-y[a[k]-1])))
		}
		//---end
	}

	fmt.Println(ans / float64(factorial(len(a))))
}
