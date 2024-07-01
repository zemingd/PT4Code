package main
import(
  "fmt"
)
func main(){
  var a, b, k int64
  fmt.Scan(&a, &b, &k)
  if k<=a{
		fmt.Println(a-k,b)
	}else if k<=a+b{
		fmt.Println(0,b-(k-a))
	}else{
		fmt.Println(0,0)
	}
 }
