package main

import (
	"fmt"
)

func main() {
	var D int //距離
	var T int //時間
	var S int //分速
	fmt.Scan(&D, &T, &S)
	if D <= T*S {
		fmt.Printf("Yes")
	} else {
		fmt.Printf("No")
	}

}
