package main
import(
  "fmt"
)
func main(){
  var n, i int
  flag:=0
  fmt.Scan(&n)
  a:=make([]int, n)
  for i=0;i<n;i++{
    fmt.Scan(&a[i])
    if a[i]%2==0{
      if a[i]%3==0{
      }else if a[i]%5==0{
      }else{
        flag++
      }
    }
  }
  if flag==0{
    fmt.Println("APPROVED")
  }else{
    fmt.Println("DENIED")
  }
}