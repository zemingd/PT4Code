package main
import "fmt"

var (k,x  int)
func main() {
	fmt.Scan(&k,&x)


	res := 0
	for i:=0;i <=k; i++ {
		if x-i <= 2*k && x-i >= 0 {
			for j := 0; j <= k; j++ {
				if x-i-j <= k && x-i-j >= 0 {
					res += 1
				}
			}
		}
	}
	fmt.Println(res)
}