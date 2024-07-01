package main

import (
	"fmt"
)

type kv struct {
	Key   string
	Value int
}

type byValue []kv

func (a byValue) Len() int           { return len(a) }
func (a byValue) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a byValue) Less(i, j int) bool { return a[i].Value > a[j].Value }
func (a byValue) Up(i, j int) bool   { return a[i].Value > a[j].Value }

func main() {
	var H, N int
	fmt.Scan(&H, &N)
	arr := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&arr[i])
	}

	var sum int
	for _, v := range arr {
		sum += v
	}
	if sum >= H {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
	// sort.Ints(arr)
	// l := len(arr) - 1

	// isDead := false
	// if l == 0 {
	// 	if H < 1 {
	// 		fmt.Println("Yes")
	// 		isDead = true
	// 	}
	// } else if l == 1 {
	// 	H -= arr[1]
	// 	if H < 1 {
	// 		fmt.Println("Yes")
	// 		isDead = true
	// 	}
	// } else {
	// 	for i := 0; i < 2; i++ {
	// 		H -= arr[l-i]
	// 		fmt.Println(arr[l-i])
	// 		if H < 1 {
	// 			fmt.Println("Yes")
	// 			isDead = true
	// 			break
	// 		}
	// 	}
	// }
	// if !isDead {
	// 	fmt.Println("No")
	// }
}
