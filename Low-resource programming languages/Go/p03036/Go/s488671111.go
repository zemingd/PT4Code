package main 

import "fmt"

func main() {
	var r, d, x int
	fmt.Scan(&r, &d, &x)
	cur_gram := x
	for i := 0; i < 10; i++ {
		cur_gram = cur_gram * r -d
		fmt.Println(cur_gram)
	}
}