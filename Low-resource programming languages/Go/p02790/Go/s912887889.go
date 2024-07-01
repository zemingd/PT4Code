package main

import (
	"fmt"
	"strings"
)

func main() {
	var H, N int
	fmt.Scanf("%d %d\n", &H, &N)

	A := make([]string, N)
	B := make([]string, H)
	for i := 0; i < N; i++ {
		A[i] = fmt.Sprint(H)
	}
	for i := 0; i < H; i++ {
		B[i] = fmt.Sprint(N)
	}
	AS := strings.Join(A, "")
	BS := strings.Join(B, "")
	if AS > BS {
		fmt.Println(BS)
	} else {
		fmt.Println(AS)
	}

}
