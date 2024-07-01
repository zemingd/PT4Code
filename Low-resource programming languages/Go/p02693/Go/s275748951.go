package main
import "fmt"
func main(){
    var k int
    var a int
    var b int
    fmt.Scan(&k,&a,&b)
  fmt.Println(str(k,a,b))

  func str(k, a, b int)string{

	for i := b; i >= a; i-- {
		fmt.Println(i)
		if i%k == 0 {
			return "OK"
		}
	}
	return "NG"
}

}