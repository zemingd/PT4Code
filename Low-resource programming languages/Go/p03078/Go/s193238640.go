package main
import(
  "fmt"
  "sort"
)
func main() {
  var(
    x [4]int
    a [3][]int
    d,totalab,totalcd []int
    min int
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
  for _,i:=range a[0] {
    for _,j:=range a[1] {
      totalab=append(totalab,i+j)
    }
  }
  sort.Sort(sort.Reverse(sort.IntSlice(totalab)))
  min=x[3]
  if x[0]*x[1]<x[3]{
    min=x[0]*x[1]
  }
  for i:=0;i<min;i++{
    d=append(d,totalab[i])
  }
  for _,i:=range a[2]{
    for _,j:=range d{
      totalcd=append(totalcd,i+j)
    }
  }
  sort.Sort(sort.Reverse(sort.IntSlice(totalcd)))
  for i:=0;i<x[3];i++{
    fmt.Println(totalcd[i])
  }
}