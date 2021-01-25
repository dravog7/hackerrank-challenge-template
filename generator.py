# RANDOMLY GENERATED INPUT
import sys
from random import choices,randint

args = sys.argv

CHARS = "qwertyuiopasdfghjklzxcvbnm"

def get_string(size=0):
    return "".join(choices(CHARS,k=size))

n = int(args[1]) if (len(args) > 1) else 1

si_min = 0
si_max = 100
def si():
    return randint(si_min,si_max)

strings = "\n".join([get_string(si()) for i in range(n)])

print(n)
print(strings)