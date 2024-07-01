package main

import (
	"fmt"
)

type Student struct {
	Number     int
	inClassNum int
}

type ByClassNum []Student

func (a ByClassNum) Len() int           { return len(a) }
func (a ByClassNum) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a ByClassNum) Less(i, j int) bool { return a[i].inClassNum < a[j].inClassNum }

func main() {

	var N int
	fmt.Scan(&N)

	slice := make([]int, N)

	for i := 0 ; i < N ; i++ {
		fmt.Scan(&slice[i])
	}

	var ans int = 0

	for i := 0 ; i < N ; i++ {
		for j := i ; j < N ; j++ {
			if( i != j) {
				ans += slice[i]*slice[j]
			}
		}
	}


	fmt.Println(ans)

}
