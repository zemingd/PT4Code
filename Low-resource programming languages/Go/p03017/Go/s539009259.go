package main

import (
	"fmt"
	"strings"
)

func main() {
	var N, A, B, C, D int
	var S string
	fmt.Scan(&N, &A, &B, &C, &D, &S)

	// AとCの間、またはBとDの間に岩が２つ連続で並んでいるゾーンがある->No
	if strings.Contains(S[A-1:C], "##") || strings.Contains(S[B-1:D], "##") {
		fmt.Println("No")
		return
	}

	// C > D の時、Bの1つ前からDの1つ後までの間に平地が3つ連続で並んでいるゾーンがない->No
	if C > D && !strings.Contains(S[B-2:D+1], "...") {
		fmt.Println("No")
		return
	}

	fmt.Println("Yes")
}
