package main

import (
  "fmt"
  "os"
  "bufio"
  "strconv"
  "math"
  "math/rand"
  "time"
)

type XorShift struct {
  X uint64
  Nl [65536]float64
}

func (xs *XorShift) xinit(){
  var n2 = 0.5 / 65536
  for i:=0; i<65536; i++ {
    xs.Nl[i] = math.Log(float64(i) / 65536.0 + n2)
  }
}

func (xs *XorShift) next() uint64 {
  xs.X ^= xs.X << 13; xs.X ^= xs.X >> 7; xs.X ^= xs.X << 17;
  return xs.X
}

func (xs *XorShift) nextInt(n int) int {
  return int(xs.next() % uint64(n))
}

func (xs *XorShift) nextLog() float64 {
  return xs.Nl[xs.nextInt(65536)]
}

var xs XorShift
var starttime time.Time

const (
  M = 26
  D = 365
  TO = 1.98
)

var C = make([]int, M)
var S [D][M]int
var T = make([]int, D)
var (
  ttt = 0
  ctt = 0
  dtt = 0
  ett = 0
  ftt = 0
)

type Link struct {
  Day int
  C int
  Prev *Link
  Next *Link
}

var LA = make([]Link, D+M*2)
var DS = make([]int, D+2)

func sinit(){
  sc := bufio.NewScanner(os.Stdin)
  sc.Split(bufio.ScanWords)
  sc.Scan()
  sc.Text()

  for i:=0; i<M; i++{
    sc.Scan()
    C[i], _ = strconv.Atoi(sc.Text())
  }

  for i:=0; i<D; i++{
    for j:=0; j<M; j++{
      sc.Scan()
      S[i][j], _ = strconv.Atoi(sc.Text())
    }
  }

  for i:=0; i<D+2; i++ {
    DS[i] = (i-1) * i / 2
  }

  for i:=0; i<M; i++ {
    LA[D+i].Day = -1
    LA[D+i].C = i
    LA[D+i].Next = &LA[D+M+i]
    LA[D+M+i].Day = D
    LA[D+M+i].C = i
    LA[D+M+i].Prev = &LA[D+i]
  }

  cc := make([]int, M)

  for i:=0; i<D; i++ {
    LA[i].Day = i
    c := 0
    var mm float64 = -1
    for j:=0; j<M; j++ {
      k := D / (cc[j] + 1) + 1
      t := (float64(C[j]) + 0.5) * float64(DS[k] * k)
      if mm < t {
        mm = t
        c = j
      }
    }
    cc[c]++
    LA[i].C = c
    ln := &LA[D+M+c]
    lp := ln.Prev
    LA[i].Next = ln
    LA[i].Prev = lp
    ln.Prev = &LA[i]
    lp.Next = &LA[i]
  }
}

func score() int {
  r := 0
  for i:=0; i<M; i++ {
    li := LA[D+i].Next
    pd := -1
    for true {
      r -= C[i] * DS[li.Day - pd]
      if li.Day == D {
        break
      }
      r += S[li.Day][li.C]
      pd = li.Day
      li = li.Next
    }
  }
  return r
}

func sswap(a, b *Link) int {
  ca := a.C
  da := a.Day
  pda := a.Prev.Day
  nda := a.Next.Day
  cb := b.C
  db := b.Day
  pdb := b.Prev.Day
  ndb := b.Next.Day

  t := S[da][ca] + S[db][cb] -
    C[ca] * (DS[nda - da] + DS[da - pda]) -
    C[cb] * (DS[ndb - db] + DS[db - pdb])
  u := S[db][ca] + S[da][cb] -
    C[ca] * (DS[nda - db] + DS[db - pda]) -
    C[cb] * (DS[ndb - da] + DS[da - pdb])

  return u - t
}

const gg = 1400.0

func solve(){
  sc := score()

  for true {
    gt := (TO - time.Now().Sub(starttime).Seconds()) / TO
    if gt <= 0 {
      break
    }

    for tt:=0; tt<D; tt++ {
      da := tt
      la := &LA[da]
      ca := la.C
      cc := xs.nextInt(M-1)
      if cc >= ca {
        cc++
      }
      lc := LA[D + cc].Next
      for lc.Day < da {
        lc = lc.Next
      }
      pda := la.Prev.Day
      nda := la.Next.Day
      pdc := lc.Prev.Day
      ndc := lc.Day

      t := S[da][ca] -
        C[ca] * (DS[nda - da] + DS[da - pda]) -
        C[cc] * (DS[ndc - pdc])
      u := S[da][cc] -
        C[ca] * (DS[nda - pda]) -
        C[cc] * (DS[ndc - da] + DS[da - pdc])

      ts := u - t
      if ts >= 0 || float64(ts) > gg * xs.nextLog() * gt {
        ett++
        la.C = cc
        la.Prev.Next = la.Next
        la.Next.Prev = la.Prev
        la.Prev = lc.Prev
        la.Next = lc
        la.Prev.Next = la
        la.Next.Prev = la
      }
    }

    for tt:=0; tt<D; tt++ {
      a := tt
      la := &LA[a]
      bi := la.Prev.Day + 1
      ba := la.Next.Day - 1
      if bi >= ba {
        continue
      }
      dtt++
      b := xs.nextInt(ba - bi) + bi
      if b >= a {
        b++
        if LA[b].Prev.Day > a {
          continue
        }
      } else {
        if LA[b].Next.Day < a {
          continue
        }
      }
      lb := &LA[b]
      ttt++

      ts := sswap(la, lb)
      if ts >= 0 || float64(ts) > gg * xs.nextLog() * gt {
        ctt++
        la.C, lb.C = lb.C, la.C
        la.Prev, lb.Prev = lb.Prev, la.Prev
        la.Next, lb.Next = lb.Next, la.Next
        la.Prev.Next = la
        la.Next.Prev = la
        lb.Prev.Next = lb
        lb.Next.Prev = lb
        sc += ts
      }
    }
  }

  for i:=0; i<D; i++ {
    T[i] = LA[i].C
  }

  fmt.Fprintf(os.Stderr, "score: %d time: %f" +
    " ttt: %d ctt: %d dtt: %d ett: %d ftt %d\n",
    sc, time.Now().Sub(starttime).Seconds(), ttt, ctt, dtt, ett, ftt)
}

func output(){
  for i:=0; i<D; i++ {
    fmt.Println(T[i] + 1)
  }
}

func main(){
  starttime = time.Now()
  rand.Seed(starttime.UnixNano())
  xs = XorShift{X: uint64(rand.Intn(65536) + 1)}
  xs.xinit()
  sinit()
  solve()
  output()
}
