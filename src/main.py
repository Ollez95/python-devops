from fast_api.ScrapeDataApi import ScrapeDataApi
from fastapi import FastAPI
import uvicorn

api = FastAPI()
scrape_data = ScrapeDataApi()


@api.get("/")
def get_main_page():
    return scrape_data.main_page()

if __name__ == "__main__":
    uvicorn.run(api, port=8080, host="0.0.0.0")
