package main

import "fmt"

func solve() {
	var S string
	fmt.Scan(&S)
	fmt.Println("2018" + S[4:])
}

func main() {
	solve()
}
