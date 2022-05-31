import psutil
import time

kb = 1000
mb = kb * kb
gb = mb * kb

def format_speed(speed:int)->str:
    speed *= 8
    txt = "{:2.0f}{}"
    if speed < 0:
        speed = 0
    if speed > gb:
        return txt.format(round(speed/gb),"Gb").ljust(5)
    elif speed > mb:
        return txt.format(round(speed/mb),"Mb").ljust(5)
    elif speed > kb:
        return txt.format(round(speed/kb),"Kb").ljust(5)
    else:
        return txt.format(round(speed), "b").ljust(5)

if __name__ == "__main__":
    net = psutil.net_io_counters(pernic=True)
    down = net["wlp37s0"].bytes_recv 
    up = net["wlp37s0"].bytes_sent
    time.sleep(1)
    net = psutil.net_io_counters(pernic=True)
    down_2 = net["wlp37s0"].bytes_recv 
    up_2 = net["wlp37s0"].bytes_sent
    result = "\uf103{} \uf102{}".format(format_speed(down_2-down), format_speed(up_2-up))
    print(result, end="")
