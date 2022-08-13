import os

from reqover import cover, create_build, REQOVER_SERVER, send_result, download_swagger_spec, save_spec_file

PROJECT_TOKEN = os.environ.get("PROJECT_TOKEN")
BRANCH = os.environ.get("BRANCH", "Master")
SWAGGER_URL = os.environ.get("SWAGGER_URL")
BASE_PATH = os.environ.get("BASE_PATH")


class Reqover:
    def __init__(self):
        self.results_url = None

    def load(self, loader):
        response = download_swagger_spec(SWAGGER_URL)
        file_path = save_spec_file(response)
        data = {
            "name": BRANCH,
            "serviceUrl": SWAGGER_URL,
            "swaggerUrl": SWAGGER_URL,
            "basePath": BASE_PATH,
        }
        self.results_url = create_build(REQOVER_SERVER, data, PROJECT_TOKEN, file=file_path)

    def response(self, flow):
        try:
            result = cover(flow)
            send_result(self.results_url, result)
        except Exception as e:
            print(e)


addons = [Reqover()]
