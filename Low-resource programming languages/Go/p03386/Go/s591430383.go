package main
import . "fmt"
func main() {
  var a,b,k int
  Scan(&a,&b,&k)
  if a+k-1 >= b-k+1 {
    for i:=a;i<b+1;i++ { Println(i) }
  } else {
    for i:=0;i<k;i++ { Println(a+i) }
    for i:=k-1;i>=0;i-- { Println(b-i) }
  }
}