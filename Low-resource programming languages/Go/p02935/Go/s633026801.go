package main
import("fmt";"sort")

func main(){
  var n int
  fmt.Scanf("%d",&n)
  
  a:=make([]float64,n)
  for i:=range a{
    fmt.Scanf("%f",&a[i])
  }
  sort.Float64s(a)
  
  answer := (a[0]+a[1])/2
  for i:=2;i<n;i++{
    answer=(answer+a[i])/2
  }
  
  fmt.Printf("%f",answer)
}