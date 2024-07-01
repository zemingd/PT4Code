package main
import(
  "fmt"
)
func main(){
  var n, i int
  ans:=0
  flag:=0
  fmt.Scan(&n)
  a:=make([]int, n)
  for i=0;i<n;i++{
    fmt.Scan(&a[i])
  }
  for i=0;i<n-2;i++{
    if a[i]!=a[i+2]{
      a[i+2]=a[i]
      ans++
    }
  }
  l:
  for i=0;i<n-1;i++{
    if a[i]!=a[i+1]{
      break l
    }
    flag++
  }
  if flag!=0{
    fmt.Println(n/2)
  }else{
    fmt.Println(ans)
  }
}
