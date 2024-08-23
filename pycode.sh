if limit < 2:
        return []
    
    # Initialize a boolean array of size `limit + 1` (True means prime)
    is_prime = [True] * (limit + 1)
    is_prime[0] = is_prime[1] = False  # 0 and 1 are not primes
    
    p = 2
    while p * p <= limit:
        if is_prime[p]:
            # Mark all multiples of p as non-prime
            for i in range(p * p, limit + 1, p):
                is_prime[i] = False
        p += 1
    
    # Collect all prime numbers
    primes = [num for num, prime in enumerate(is_prime) if prime]
    
    return primes

# Example usage
limit = 100
print(f"Prime numbers up to {limit}: {sieve_of_eratosthenes(limit)}")

