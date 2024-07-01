package main

import "fmt"

func main() {
	var A, P int
	fmt.Scanf("%d", &A)
	fmt.Scanf("%d", &P)

	apPiece := A * 3
	apPiece += P
	pieNum := apPiece / 2

	fmt.Printf("%d\n", pieNum)

}
