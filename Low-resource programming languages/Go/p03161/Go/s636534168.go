package main
import(
  "fmt"
  "bufio"
  "os"
  "strconv"
)
var sc=bufio.NewScanner(os.Stdin)
func nextInt() int64{
  sc.Scan()
  i, e :=strconv.ParseInt(sc.Text(), 10, 64)
  if e!=nil{
    panic(e)
  }
  return i
}
func min (a *int64, b int64) bool{
  if *a>b{
    *a=b
    return true
  }
  return false
}
func abs(a int64) int64{
  if a<0{
    return a*-1
  }else{
    return a
  }
}
func main(){
  var i, j int64
  dp:=make([]int64, 110000)
  sc.Split(bufio.ScanWords)
  n:=nextInt()
  k:=nextInt()
  a:=make([]int64, 110000)
  for i=0;i<n;i++{
    a[i]=nextInt()
  }
  for i=0;i<100001;i++{
    dp[i]=1000000001
  }
  dp[0]=0
  for i=0;i<n;i++{
    for j=1;j<=k;j++{
      min(&dp[i+j], dp[i]+abs(a[i]-a[i+j]))
    }
  }
  fmt.Println(dp[n-1])
}
