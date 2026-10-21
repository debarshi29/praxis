import random
import sys

random.seed(int(sys.argv[1]))
n = random.randint(1, 6)
print(1)
print(n)
print(*[random.randint(1, 10) for _ in range(n)])
