package main
import("fmt")

func main(){
  var n int
  fmt.Scanf("%d",&n)
  
  a:=make([]float64,n)
  s:=0.0
  for i:=0; i<n; i++{
    fmt.Scanf("%f",&a[i])
    a[i]=1.0/a[i]
    s+=a[i]
  }
  var answer float64
  answer = 1.0/s
  fmt.Printf("%f",answer)
}