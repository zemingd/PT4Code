package main
import(
  "fmt"
)
func main(){
  var n, i int
  i=0
  fmt.Scan(&n)
  a:=make([]int, 1000001)
  for{
    a[i]=n
    if n%2==0{
      n/=2
    }else{
      n=3*n+1
    }
    for j:=0;j<i;j++{
      if a[j]==n{
        fmt.Println(i+2)
        return
      }
    }
    i++
  }
}
