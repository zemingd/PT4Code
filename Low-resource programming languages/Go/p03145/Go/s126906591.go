package main

import(
	"fmt"
)

func main() {
	var ab, bc, ca int
	fmt.Scan(&ab, &bc, &ca)

	ans := (ab*bc) / 2
	fmt.Println(ans)
}