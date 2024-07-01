package main

import "fmt"

func main() {
	var A,life,AttackCnt int
	fmt.Scan(&life)
	fmt.Scan(&A)

	for {
		life = life - A
		AttackCnt ++
		if life <= 0 {
			break
		}
	}
	fmt.Println(AttackCnt)
}
