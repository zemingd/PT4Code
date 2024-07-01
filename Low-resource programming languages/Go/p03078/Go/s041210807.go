package main

import (
	"fmt"
	"sort"
)

var (
	X, Y, Z, K int
	A          []int64
	B          []int64
	C          []int64
	Cake       []int64
)

// func Min(a, b int64) int64 {
// 	if a > b {
// 		return b
// 	}
// 	return a
// }

// func calc(a, b, c bool, X, Y, Z int) (int64, int, int, int) {

// 	fmt.Println(X, Y, Z)

// 	var min int64 = 1 << 60
// 	var which string
// 	if a {
// 		if min != Min(A[X]-A[X-1], min) {
// 			which = "a"
// 			min = Min(A[X]-A[X-1], min)
// 		}
// 	}
// 	if b {
// 		if min != Min(B[Y]-B[Y-1], min) {
// 			which = "b"
// 			min = Min(B[Y]-B[Y-1], min)
// 		}
// 	}
// 	if c {
// 		if min != Min(C[Z]-C[Z-1], min) {
// 			which = "c"
// 			min = Min(C[Z]-C[Z-1], min)
// 		}
// 	}
// 	if "a" == which {
// 		X--
// 		return A[X] + B[Y] + C[Z], X, Y, Z
// 	}
// 	if "b" == which {
// 		Y--
// 		return A[X] + B[Y] + C[Z], X, Y, Z
// 	}
// 	if "c" == which {
// 		Z--
// 		return A[X] + B[Y] + C[Z], X, Y, Z
// 	}
// 	return 0, 0, 0, 0
// }

// func main() {
// 	fmt.Scan(&X, &Y, &Z, &K)
// 	A = make([]int64, X)
// 	B = make([]int64, Y)
// 	C = make([]int64, Z)
// 	for i := 0; i < X; i++ {
// 		fmt.Scan(&A[i])
// 	}
// 	for i := 0; i < Y; i++ {
// 		fmt.Scan(&B[i])
// 	}
// 	for i := 0; i < Z; i++ {
// 		fmt.Scan(&C[i])
// 	}
// 	sort.Slice(A, func(i, j int) bool {
// 		return A[i] < A[j]
// 	})
// 	sort.Slice(B, func(i, j int) bool {
// 		return B[i] < B[j]
// 	})
// 	sort.Slice(C, func(i, j int) bool {
// 		return C[i] < C[j]
// 	})
// 	X--
// 	Y--
// 	Z--
// 	now := A[X] + B[Y] + C[Z]
// 	for k := 0; k < K; k++ {
// 		fmt.Println(now)
// 		a, b, c := X > 0, Y > 0, Z > 0
// 		now, X, Y, Z = calc(a, b, c, X, Y, Z)
// 	}
// }

func main() {
	fmt.Scan(&X, &Y, &Z, &K)
	A = make([]int64, X)
	B = make([]int64, Y)
	C = make([]int64, Z)
	for i := 0; i < X; i++ {
		fmt.Scan(&A[i])
	}
	for i := 0; i < Y; i++ {
		fmt.Scan(&B[i])
	}
	for i := 0; i < Z; i++ {
		fmt.Scan(&C[i])
	}
	sort.Slice(A, func(i, j int) bool {
		return A[i] < A[j]
	})
	sort.Slice(B, func(i, j int) bool {
		return B[i] < B[j]
	})
	sort.Slice(C, func(i, j int) bool {
		return C[i] < C[j]
	})
	for x := 0; x < X; x++ {
		for y := 0; y < Y; y++ {
			for z := 0; z < Z; z++ {
				Cake = append(Cake, A[x] + B[y] + C[z])
			}
		}
	}
	sort.Slice(Cake, func(i, j int) bool {
		return Cake[i] > Cake[j]
	})
	for k := 0; k < K; k++ {
		fmt.Println(Cake[k])
	}
}
