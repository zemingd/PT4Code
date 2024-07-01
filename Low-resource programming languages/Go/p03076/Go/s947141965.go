package main
import "fmt"

func main() {
  var(
    a,b,c,d,e int
  )
    _, _= fmt.Scanf("%d", &a)
    _, _= fmt.Scanf("%d", &b)
    _, _= fmt.Scanf("%d", &c)
    _, _= fmt.Scanf("%d", &d)
    _, _= fmt.Scanf("%d", &e)
  l := []int{a,b,c,d,e}
  cnt := 9999
  for i1:=0; i1<5; i1++ {
    cnt1 := 0+l[i1]
    if cnt1%10!=0 { cnt1 += (10-cnt1%10) }
    for i2:=0; i2<5; i2++ {
      if i2==i1 { continue }
      cnt2 := cnt1+l[i2]
      if cnt2%10!=0 { cnt2 += (10-cnt2%10) }
      for i3:=0; i3<5; i3++ {
      	if i3==i1 || i3==i2 { continue }
      	cnt3 := cnt2+l[i3]
      	if cnt3%10!=0 { cnt3 += (10-cnt3%10) }
        for i4:=0; i4<5; i4++ {
          if i4==i1 || i4==i2 || i4==i3 { continue }
          cnt4 := cnt3+l[i4]
          if cnt4%10!=0 { cnt4 += (10-cnt4%10) }
          for i5:=0; i5<5; i5++ {
            if i5==i1 || i5==i2 || i5==i3 || i5==i4  { continue }
            cnt5 := cnt4+l[i5]
            if cnt>cnt5 {cnt=cnt5}
          }
        }
      }
    }
  }
  fmt.Println(cnt)
}