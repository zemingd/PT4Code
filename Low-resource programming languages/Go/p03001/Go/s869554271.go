// 中心を通れば真っ二つにできる 中心だったら複数取れる
package main
import "fmt"
func main(){
	var W, H, x, y float64
	fmt.Scan(&W, &H, &x, &y)
	if H/2.0 == y && W/2.0 == x{
		fmt.Println(W*H/2, 1)
	}else{
		fmt.Println(W*H/2, 0)
	}
}