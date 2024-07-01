package main
import(
  "fmt"
)

func gcd(a int, b int)int{
	if b==0{
		return a
	}
	return gcd(b, a%b)
}
func main(){
   var k, a, b, c int
   ans:=0
   fmt.Scan(&k)
   for a=1;a<=k;a++{
     for b=1;b<=k;b++{
       for c=1;c<=k;c++{
         ans+=gcd(a, gcd(b, c))
       }
     }
   }
   fmt.Println(ans)
}
