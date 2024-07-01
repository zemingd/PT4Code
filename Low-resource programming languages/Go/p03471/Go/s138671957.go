package main

import(
  "fmt"
)

func main(){
  var n  , y int
  fmt.Scan( &n , &y )

  man10000 := -1
  man5000 := -1
  man1000 := -1
  for man := 0 ; man <= n ; man++ {
    for gosen := 0 ; man + gosen <= n ; gosen++ {
      sen := n - man - gosen
        if ( man + gosen + sen == n ) && ( man * 10000 + gosen * 5000 + sen * 1000 == y ) {
          man10000 = man
          man5000 = gosen
          man1000 = sen
      }
    }
  }

  fmt.Printf("%d %d %d" , man10000 , man5000 , man1000 )

}
