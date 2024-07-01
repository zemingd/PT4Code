package main

import "fmt"

func gcd(a int, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b,a%b)
}

func count(a int, b int, c int) int {
	if a == b {
		if a == c {
			return 1
		} else {
			return 3
		}
	} else {
		if a == c || b == c {
			return 3
		} else {
			return 6
		}
	}
}


func main(){
	var n,sum int
	fmt.Scan(&n)
	for i:=1 ; i<=n ; i++ {
		for j:=i; j<=n ; j++ {
			for k:=j ; k<=n; k++ {
				temp := gcd(gcd(i,j),k)
				num := count(i,j,k)
				sum += temp*num
			}
		}
	}
	fmt.Println(sum)
}
