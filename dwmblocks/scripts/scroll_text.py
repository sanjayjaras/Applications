import time

delay = 1
display_len = 7


def adjust_index_and_call_scroll(index, msg):
    if index > len(msg) - display_len:
        scroll_text(len(msg) - display_len, msg)
    else:
        return scroll_text(index, msg)


def scroll_text(index, msg, reverse=False):
    print(msg[index:index + display_len])
    if not reverse:
        if index >= len(msg) - display_len:
            reverse = True
        else:
            index = index + 1
    else:
        if index <= 0:
            reverse = False
        else:
            index = index - 1

    time.sleep(delay)
    scroll_text(index, msg, reverse)


if __name__ == "__main__":
    adjust_index_and_call_scroll(20, "Hello, How are you!")
