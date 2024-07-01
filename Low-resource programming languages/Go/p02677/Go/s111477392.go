package main

import (
	"fmt"
	"math"
)

func main() {
	var A, B, H, M int
	fmt.Scanf("%d %d %d %d", &A, &B, &H, &M)

	PI := 3.14159265358979323846
	var angA, angB float64
	angA = float64(2) * PI / 12 * (float64(H) + float64(M)/60)
	angB = 2 * PI / 60 * float64(M)

	ax := float64(A) * math.Sin(angA)
	ay := float64(A) * math.Cos(angA)
	bx := float64(B) * math.Sin(angB)
	by := float64(B) * math.Cos(angB)
	dist := math.Sqrt((ax-bx)*(ax-bx) + (ay-by)*(ay-by))
	fmt.Println(dist)
}
