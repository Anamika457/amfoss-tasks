use std::io;

fn is_prime(num: u32) -> bool {
    if num <= 1 {
        return false;
    }
    for i in 2..num {
        if num % i == 0 {
            return false;
        }
    }
    true
}

fn main() {
    let mut input = String::new();

    println!("Enter a number:");
    io::stdin().read_line(&mut input).expect("Failed to read line");

    let n: u32 = match input.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Invalid input");
            return;
        }
    };

    if n < 2 {
        println!("No prime numbers");
    } else {
        
        for i in 2..=n {
            if is_prime(i) {
                print!("{} ", i);
            }
        }
        
    }
}