package main
 
import (
    "fmt"
)
 
func main() {
  	var a,b,c,ans int
   	fmt.Scan(&a)
   	fmt.Scan(&b)
   	fmt.Scan(&c)
		ans = b+c-a
		
		if ans < 0{
			ans = 0
		}
  	fmt.Println(ans)
}