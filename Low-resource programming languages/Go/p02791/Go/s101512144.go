package main

import "fmt"

func main() {
	var n int
	var flag bool
	fmt.Scan(&n)
	count := 1
	p := make([]int, n)
	for i:=0; i<n; i++{
		fmt.Scan(&p[i])
	}

	if len(p) >= 2{
		for i:=1; i<n; i++{
			for j:=0; j<i-1; j++{
				if p[i] <= p[j]{
					flag = true
				}else{
					flag = false
					break
				}
			}
			if flag == true{
				count++
			}
		}
	}


	fmt.Println(count)

}