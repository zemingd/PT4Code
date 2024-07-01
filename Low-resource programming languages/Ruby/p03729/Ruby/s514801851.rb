use std::io;

fn read_line()-> String {
    let mut s = String::new();
    let _ = io::stdin().read_line(&mut s).unwrap();
    s
}

fn main() {
	let n = read_line().split_whitespace().map(|e|e.parse().unwrap())
	.collect::<Vec<String>>();

	let a = n[0].trim().split("").collect::<Vec<&str>>();
	let b = n[1].trim().split("").collect::<Vec<&str>>();
	let c = n[2].trim().split("").collect::<Vec<&str>>();

	if a[a.len() - 2] == b[1] && b[b.len() - 2] == c[1] {
		println!("YES");
	}else{
		println!("NO");
	}

}
