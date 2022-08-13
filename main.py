from reqover import cover


class Reqover:
    def __init__(self):
        self.num = 0

    def response(self, flow):
        try:
            cover(flow)
        except Exception as e:
            print(e)


addons = [Reqover()]
