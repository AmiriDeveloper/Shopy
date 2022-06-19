class Shop {
  String price;
  String imageUrl;
  String model;
  String ram;
  String memory;
  String pixel;

  Shop(
      {required this.price,
      required this.imageUrl,
      required this.model,
      required this.memory,
      required this.pixel,
      required this.ram});
}

List<Shop> shoppingList = [
  Shop(
    imageUrl:
        "https://www.gottabemobile.com/samsung-galaxy-s10-news/galaxy-s10-3/",
    price: "1100",
    model: "samsung glaxy 10s",
    ram: "8",
    memory: "128",
    pixel: "48",
  ),
  Shop(
    imageUrl:
        "https://www.mytrendyphone.eu/images/Case-with-Ring-Holder-for-Huawei-P50-Pocket-Black-14012022-01-p.jpg",
    price: "1209",
    model: "huawi P50",
    ram: "16",
    memory: "256",
    pixel: "64",
  ),
  Shop(
    imageUrl:
        "https://cdn.pocket-lint.com/r/s/320x/assets/images/120810-phones-news-buyer-s-guide-upcoming-smartphones-image82-xtmzmj34ai.jpg?v1",
    price: "300",
    model: "samsung A32",
    ram: "8",
    memory: "128",
    pixel: "48",
  ),
  Shop(
    imageUrl:
        "https://target.scene7.com/is/image/Target/GUEST_18158d75-e421-4bc4-98cf-2d2a00533a0b",
    price: "40",
    model: "headph heyday",
    ram: "0",
    memory: "0",
    pixel: "0",
  ),
  Shop(
    imageUrl:
        "https://www.thebackmarket.nl/cdn-cgi/image/format=auto,quality=75,width=640/https://d1eh9yux7w8iql.cloudfront.net/product_images/397533_6412a537-4f4d-42e6-a4c5-64a37169a139.jpg",
    price: "990",
    model: "samsung Note 20",
    ram: "32",
    memory: "500",
    pixel: "64",
  ),
  Shop(
    imageUrl: "https://cdn.mos.cms.futurecdn.net/gxyWHWHtEMUoKCv5RFMMoi.jpg",
    price: "1670",
    model: "lenovo think pad",
    ram: "12",
    memory: "500",
    pixel: "24",
  ),
  Shop(
    imageUrl:
        "https://www.notebookcheck.nl/uploads/tx_nbc2/XiaomiRedmiNote11Pro.JPG",
    price: "650",
    model: "Xa Radmi Note 11s",
    ram: "8",
    memory: "256",
    pixel: "48",
  ),
];

class Top {
  String title;
  Top({required this.title});
}

List<Top> titleList = [
  Top(title: "phons"),
  Top(title: "camera"),
  Top(title: "airpads"),
  Top(title: "laptop"),
  Top(title: "headphone"),
  Top(title: "speaker"),
  Top(title: "television"),
  Top(title: "watch"),
  Top(title: "consol"),
  Top(title: "powerbank"),
];
