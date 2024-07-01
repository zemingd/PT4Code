package main

import (
	"fmt"
)

func main() {
	var a, p int
	fmt.Scan(&a, &p)

	applePiece := a*3 + p
	applePie := applePiece / 2

	fmt.Println(applePie)
}
