import random
import sys




def get_text(msg, display_len):
    words = msg.split()
    index = random.randint(0, max(len(words)-2, 0))
    result = ""
    for i in range(index, max(len(words), 0)):
        result = result + words[i] + " "
    result = result[:display_len]
    result = result.ljust(display_len, ".")
    print(result, end="")
    

if __name__ == "__main__":
    #print(sys.argv[1])
    msg = sys.argv[1]
    display_len = int(sys.argv[2])
    get_text(msg, display_len)
   
