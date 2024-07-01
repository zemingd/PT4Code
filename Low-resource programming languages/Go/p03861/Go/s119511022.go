// 意味不明だったので解説をみたけど意味不明です
package main
import "fmt"
func main(){
	var a, b, x int
	fmt.Scan(&a, &b, &x)
	fmt.Println(f(b, x)-f(a-1, x))
}

func f(a, x int)int{
	if a==0{
		return 0
	}
	return f(a/x+1, x)
}