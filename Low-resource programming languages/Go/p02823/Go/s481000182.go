package main
import (
	"fmt"
)
func main() {
	var n, a, b int64
	fmt.Scan(&n, &a, &b)
	if (a+b)%2==0 && a!=1 &&b!=n{
		fmt.Println((b-a)/2)
		return
	}else if (a+b)%2!=0{
		if a-1<=n-b{
			fmt.Println(b-1)
			return
		}else{
			fmt.Println(n-a)
		}
	}
	if a==1{
		if b-1<=n-1{
			fmt.Println(b-1)
				return
		}else{
			fmt.Println(n-1)
			return			}
	}else{
		if n-1<=a-1{
			fmt.Println(n-1)
			return
		}else{
			fmt.Println(a-1)
			return
		}
	}
}
