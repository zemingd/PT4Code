package main
import(
  "fmt"
  "sort"
)
func main() {
  var(
    x [4]int
    a [3][]int
    value []int
  )
  for i:=0;i<=3;i++{
    fmt.Scan(&x[i])
  }
  for i:=0;i<3;i++{
    a[i]=make([]int,x[i],1000)
    for j:=0;j<x[i];j++{
      fmt.Scan(&a[i][j])
    }
  }
  for _,i:=range a[0]{
    for _,j:=range a[1]{
      for _,k:= range a[2]{
        value=append(value,i+j+k)
      }  
    }  
  }
  sort.Sort(sort.Reverse(sort.IntSlice(value)))
  for i:=0;i<x[3];i++{
    fmt.Println(value[i])
  }
}