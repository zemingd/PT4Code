package main

import "fmt"

func main()  {
	var n, ans int
	fmt.Scan(&n)

	if n % 2 == 0{
		ans = n/2
	}else{
		ans = n/2 + n%2
	}
	fmt.Println(ans)
}