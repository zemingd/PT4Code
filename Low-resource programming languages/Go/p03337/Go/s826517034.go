package main
 
import ("fmt"
        "sort")
func main(){
var a,b int
  fmt.Scanf("%d %d",&a,&b)
  s:=[]int{
  a+b,
    a-b,
    a*b,
  }
  sort.Ints(s)
  fmt.Println(s[2])
 
}