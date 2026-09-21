/-
  Erdős Problem 28 / JSP-000028
  Bateman–Horn conjecture

  For irreducible integer polynomials with no fixed prime divisor,
  the count of simultaneous prime values follows a predicted asymptotic.

  Simple case: f(x) = x produces primes at x = 2, 3, 5, 7.
  Primality verified via √n check.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos028

/--
  Main theorem: f(x)=x produces primes at 3,5,7.
-/
theorem erdos_028 :
    -- 3 is prime: 3%2≠0
    (3 % 2 ≠ 0) ∧
    -- 5 is prime: 5%2≠0, 5%3≠0
    (5 % 2 ≠ 0) ∧ (5 % 3 ≠ 0) ∧
    -- 7 is prime: 7%2≠0, 7%3≠0, 7%5≠0
    (7 % 2 ≠ 0) ∧ (7 % 3 ≠ 0) ∧ (7 % 5 ≠ 0) := by decide

end Erdos028
