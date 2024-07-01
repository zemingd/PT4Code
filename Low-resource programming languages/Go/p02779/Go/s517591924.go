package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++{
		fmt.Scan(&a[i])
	}
	temp := 0
	j := 0
	flag := true
	for j < n {
		temp = a[j]
		for i := j+1; i < n; i++{
			if temp == a[i]{
				j = n
				flag = false
				goto end
			}
		}
		j++
	}

	end: 
	if flag{
		fmt.Println("YES")
	}else{
		fmt.Println("NO")
	}
}