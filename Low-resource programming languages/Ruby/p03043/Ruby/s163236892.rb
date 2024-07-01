use std::vec::Vec;

fn read<T: std::str::FromStr>() -> T {
    let mut s = String::new();
    std::io::stdin().read_line(&mut s).ok();
    s.trim().parse().ok().unwrap()
}

fn read_vec<T: std::str::FromStr>() -> Vec<T> {
    read::<String>().split_whitespace().map(|e| e.parse().ok().unwrap()).collect()
}

fn main() {
    let (n ,k): (f64, f64) = {
      let v = read_vec();
      (v[0], v[1])
    };

    let mut res: f64 = 0.0;

    for i in 1..n as usize + 1 {
      let mut temp: f64 = 1.0 / (n as f64);
      let mut now = i as f64;
      while now < k {
        now *= 2.0;
        temp /= 2.0;
      }
      res += temp;
    }
    println!("{}", res);

}
