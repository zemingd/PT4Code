package main
import (
	"fmt"
)
func main() {
	var n, a, b int64
	fmt.Scan(&n, &a, &b)
	if (a+b)%2==0{
		fmt.Println((b-a)/2)
		return
	}else{
		if b-1<=n-a && a!=1 && b!=n{
			fmt.Println(b-1)
			return
		}else if b-1>n-a && a!=1 && b!=n{
			fmt.Println(n-a)
			return
		}
	if a==1 && b!=n{
			fmt.Println(b-1)
			return
		}else if a!=1 && b==n{
			fmt.Println(n-a)
			return
		}
	fmt.Println(b-a)
}
